FROM apache/nifi:latest

# MySQL 
COPY --chown=nifi:nifi mysql-connector-java-8.0.29.jar /opt/nifi/nifi-current/lib/
# PostgreSQL, CockroachDB, Greenplum
COPY --chown=nifi:nifi postgresql-42.4.0.jar /opt/nifi/nifi-current/lib/
# SQLite
COPY --chown=nifi:nifi sqlite-jdbc-3.36.0.2.jar /opt/nifi/nifi-current/lib/
# Firebird
COPY --chown=nifi:nifi jaybird-4.0.6.java8.jar /opt/nifi/nifi-current/lib/
# Yugabyte
COPY --chown=nifi:nifi jdbc-yugabytedb-42.3.4.jar /opt/nifi/nifi-current/lib/
# MariaDB
COPY --chown=nifi:nifi mariadb-java-client-2.7.3.jar /opt/nifi/nifi-current/lib/
# SQL Server
COPY --chown=nifi:nifi mssql-jdbc-10.2.1.jre8.jar /opt/nifi/nifi-current/lib/

# Greenplum
COPY --chown=nifi:nifi greenplum-1.0.1/nars/*.nar /opt/nifi/nifi-current/lib/

EXPOSE 10000 8000 8080 8443



