// ignore_for_file: unused_element, unnecessary_cast

import 'data_source_parameters_amazon_elasticsearch.dart';
import 'data_source_parameters_athena.dart';
import 'data_source_parameters_aurora.dart';
import 'data_source_parameters_aurora_postgresql.dart';
import 'data_source_parameters_aws_iot_analytics.dart';
import 'data_source_parameters_databricks.dart';
import 'data_source_parameters_jira.dart';
import 'data_source_parameters_maria_db.dart';
import 'data_source_parameters_mysql.dart';
import 'data_source_parameters_oracle.dart';
import 'data_source_parameters_postgresql.dart';
import 'data_source_parameters_presto.dart';
import 'data_source_parameters_rds.dart';
import 'data_source_parameters_redshift.dart';
import 'data_source_parameters_s3.dart';
import 'data_source_parameters_service_now.dart';
import 'data_source_parameters_snowflake.dart';
import 'data_source_parameters_spark.dart';
import 'data_source_parameters_sql_server.dart';
import 'data_source_parameters_teradata.dart';
import 'data_source_parameters_twitter.dart';

class DataSourceParameters {
  /// Parameters for connecting to Amazon Elasticsearch.
  final DataSourceParametersAmazonElasticsearch? amazonElasticsearch;
  /// Parameters for connecting to Athena.
  final DataSourceParametersAthena? athena;
  /// Parameters for connecting to Aurora MySQL.
  final DataSourceParametersAurora? aurora;
  /// Parameters for connecting to Aurora Postgresql.
  final DataSourceParametersAuroraPostgresql? auroraPostgresql;
  /// Parameters for connecting to AWS IOT Analytics.
  final DataSourceParametersAwsIotAnalytics? awsIotAnalytics;
  /// Parameters for connecting to Databricks.
  final DataSourceParametersDatabricks? databricks;
  /// Parameters for connecting to Jira.
  final DataSourceParametersJira? jira;
  /// Parameters for connecting to MariaDB.
  final DataSourceParametersMariaDb? mariaDb;
  /// Parameters for connecting to MySQL.
  final DataSourceParametersMysql? mysql;
  /// Parameters for connecting to Oracle.
  final DataSourceParametersOracle? oracle;
  /// Parameters for connecting to Postgresql.
  final DataSourceParametersPostgresql? postgresql;
  /// Parameters for connecting to Presto.
  final DataSourceParametersPresto? presto;
  /// Parameters for connecting to RDS.
  final DataSourceParametersRds? rds;
  /// Parameters for connecting to Redshift.
  final DataSourceParametersRedshift? redshift;
  /// Parameters for connecting to S3.
  final DataSourceParametersS3? s3;
  /// Parameters for connecting to ServiceNow.
  final DataSourceParametersServiceNow? serviceNow;
  /// Parameters for connecting to Snowflake.
  final DataSourceParametersSnowflake? snowflake;
  /// Parameters for connecting to Spark.
  final DataSourceParametersSpark? spark;
  /// Parameters for connecting to SQL Server.
  final DataSourceParametersSqlServer? sqlServer;
  /// Parameters for connecting to Teradata.
  final DataSourceParametersTeradata? teradata;
  /// Parameters for connecting to Twitter.
  final DataSourceParametersTwitter? twitter;

  /// Creates a new [DataSourceParameters].
  /// [amazonElasticsearch] Parameters for connecting to Amazon Elasticsearch.
  /// [athena] Parameters for connecting to Athena.
  /// [aurora] Parameters for connecting to Aurora MySQL.
  /// [auroraPostgresql] Parameters for connecting to Aurora Postgresql.
  /// [awsIotAnalytics] Parameters for connecting to AWS IOT Analytics.
  /// [databricks] Parameters for connecting to Databricks.
  /// [jira] Parameters for connecting to Jira.
  /// [mariaDb] Parameters for connecting to MariaDB.
  /// [mysql] Parameters for connecting to MySQL.
  /// [oracle] Parameters for connecting to Oracle.
  /// [postgresql] Parameters for connecting to Postgresql.
  /// [presto] Parameters for connecting to Presto.
  /// [rds] Parameters for connecting to RDS.
  /// [redshift] Parameters for connecting to Redshift.
  /// [s3] Parameters for connecting to S3.
  /// [serviceNow] Parameters for connecting to ServiceNow.
  /// [snowflake] Parameters for connecting to Snowflake.
  /// [spark] Parameters for connecting to Spark.
  /// [sqlServer] Parameters for connecting to SQL Server.
  /// [teradata] Parameters for connecting to Teradata.
  /// [twitter] Parameters for connecting to Twitter.
  DataSourceParameters({
    this.amazonElasticsearch,
    this.athena,
    this.aurora,
    this.auroraPostgresql,
    this.awsIotAnalytics,
    this.databricks,
    this.jira,
    this.mariaDb,
    this.mysql,
    this.oracle,
    this.postgresql,
    this.presto,
    this.rds,
    this.redshift,
    this.s3,
    this.serviceNow,
    this.snowflake,
    this.spark,
    this.sqlServer,
    this.teradata,
    this.twitter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonElasticsearch': ?amazonElasticsearch == null ? null : amazonElasticsearch!.toMap(),
      'athena': ?athena == null ? null : athena!.toMap(),
      'aurora': ?aurora == null ? null : aurora!.toMap(),
      'auroraPostgresql': ?auroraPostgresql == null ? null : auroraPostgresql!.toMap(),
      'awsIotAnalytics': ?awsIotAnalytics == null ? null : awsIotAnalytics!.toMap(),
      'databricks': ?databricks == null ? null : databricks!.toMap(),
      'jira': ?jira == null ? null : jira!.toMap(),
      'mariaDb': ?mariaDb == null ? null : mariaDb!.toMap(),
      'mysql': ?mysql == null ? null : mysql!.toMap(),
      'oracle': ?oracle == null ? null : oracle!.toMap(),
      'postgresql': ?postgresql == null ? null : postgresql!.toMap(),
      'presto': ?presto == null ? null : presto!.toMap(),
      'rds': ?rds == null ? null : rds!.toMap(),
      'redshift': ?redshift == null ? null : redshift!.toMap(),
      's3': ?s3 == null ? null : s3!.toMap(),
      'serviceNow': ?serviceNow == null ? null : serviceNow!.toMap(),
      'snowflake': ?snowflake == null ? null : snowflake!.toMap(),
      'spark': ?spark == null ? null : spark!.toMap(),
      'sqlServer': ?sqlServer == null ? null : sqlServer!.toMap(),
      'teradata': ?teradata == null ? null : teradata!.toMap(),
      'twitter': ?twitter == null ? null : twitter!.toMap(),
    };
  }

  factory DataSourceParameters.fromMap(Map<String, dynamic> map) {
    return DataSourceParameters(
      amazonElasticsearch: map['amazonElasticsearch'] == null ? null : DataSourceParametersAmazonElasticsearch.fromMap((map['amazonElasticsearch'] as Map).cast<String, dynamic>()),
      athena: map['athena'] == null ? null : DataSourceParametersAthena.fromMap((map['athena'] as Map).cast<String, dynamic>()),
      aurora: map['aurora'] == null ? null : DataSourceParametersAurora.fromMap((map['aurora'] as Map).cast<String, dynamic>()),
      auroraPostgresql: map['auroraPostgresql'] == null ? null : DataSourceParametersAuroraPostgresql.fromMap((map['auroraPostgresql'] as Map).cast<String, dynamic>()),
      awsIotAnalytics: map['awsIotAnalytics'] == null ? null : DataSourceParametersAwsIotAnalytics.fromMap((map['awsIotAnalytics'] as Map).cast<String, dynamic>()),
      databricks: map['databricks'] == null ? null : DataSourceParametersDatabricks.fromMap((map['databricks'] as Map).cast<String, dynamic>()),
      jira: map['jira'] == null ? null : DataSourceParametersJira.fromMap((map['jira'] as Map).cast<String, dynamic>()),
      mariaDb: map['mariaDb'] == null ? null : DataSourceParametersMariaDb.fromMap((map['mariaDb'] as Map).cast<String, dynamic>()),
      mysql: map['mysql'] == null ? null : DataSourceParametersMysql.fromMap((map['mysql'] as Map).cast<String, dynamic>()),
      oracle: map['oracle'] == null ? null : DataSourceParametersOracle.fromMap((map['oracle'] as Map).cast<String, dynamic>()),
      postgresql: map['postgresql'] == null ? null : DataSourceParametersPostgresql.fromMap((map['postgresql'] as Map).cast<String, dynamic>()),
      presto: map['presto'] == null ? null : DataSourceParametersPresto.fromMap((map['presto'] as Map).cast<String, dynamic>()),
      rds: map['rds'] == null ? null : DataSourceParametersRds.fromMap((map['rds'] as Map).cast<String, dynamic>()),
      redshift: map['redshift'] == null ? null : DataSourceParametersRedshift.fromMap((map['redshift'] as Map).cast<String, dynamic>()),
      s3: map['s3'] == null ? null : DataSourceParametersS3.fromMap((map['s3'] as Map).cast<String, dynamic>()),
      serviceNow: map['serviceNow'] == null ? null : DataSourceParametersServiceNow.fromMap((map['serviceNow'] as Map).cast<String, dynamic>()),
      snowflake: map['snowflake'] == null ? null : DataSourceParametersSnowflake.fromMap((map['snowflake'] as Map).cast<String, dynamic>()),
      spark: map['spark'] == null ? null : DataSourceParametersSpark.fromMap((map['spark'] as Map).cast<String, dynamic>()),
      sqlServer: map['sqlServer'] == null ? null : DataSourceParametersSqlServer.fromMap((map['sqlServer'] as Map).cast<String, dynamic>()),
      teradata: map['teradata'] == null ? null : DataSourceParametersTeradata.fromMap((map['teradata'] as Map).cast<String, dynamic>()),
      twitter: map['twitter'] == null ? null : DataSourceParametersTwitter.fromMap((map['twitter'] as Map).cast<String, dynamic>()),
    );
  }
}

