// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<DataSourceParametersAmazonElasticsearch>? amazonElasticsearch;
  /// Parameters for connecting to Athena.
  final pulumi.Input<DataSourceParametersAthena>? athena;
  /// Parameters for connecting to Aurora MySQL.
  final pulumi.Input<DataSourceParametersAurora>? aurora;
  /// Parameters for connecting to Aurora Postgresql.
  final pulumi.Input<DataSourceParametersAuroraPostgresql>? auroraPostgresql;
  /// Parameters for connecting to AWS IOT Analytics.
  final pulumi.Input<DataSourceParametersAwsIotAnalytics>? awsIotAnalytics;
  /// Parameters for connecting to Databricks.
  final pulumi.Input<DataSourceParametersDatabricks>? databricks;
  /// Parameters for connecting to Jira.
  final pulumi.Input<DataSourceParametersJira>? jira;
  /// Parameters for connecting to MariaDB.
  final pulumi.Input<DataSourceParametersMariaDb>? mariaDb;
  /// Parameters for connecting to MySQL.
  final pulumi.Input<DataSourceParametersMysql>? mysql;
  /// Parameters for connecting to Oracle.
  final pulumi.Input<DataSourceParametersOracle>? oracle;
  /// Parameters for connecting to Postgresql.
  final pulumi.Input<DataSourceParametersPostgresql>? postgresql;
  /// Parameters for connecting to Presto.
  final pulumi.Input<DataSourceParametersPresto>? presto;
  /// Parameters for connecting to RDS.
  final pulumi.Input<DataSourceParametersRds>? rds;
  /// Parameters for connecting to Redshift.
  final pulumi.Input<DataSourceParametersRedshift>? redshift;
  /// Parameters for connecting to S3.
  final pulumi.Input<DataSourceParametersS3>? s3;
  /// Parameters for connecting to ServiceNow.
  final pulumi.Input<DataSourceParametersServiceNow>? serviceNow;
  /// Parameters for connecting to Snowflake.
  final pulumi.Input<DataSourceParametersSnowflake>? snowflake;
  /// Parameters for connecting to Spark.
  final pulumi.Input<DataSourceParametersSpark>? spark;
  /// Parameters for connecting to SQL Server.
  final pulumi.Input<DataSourceParametersSqlServer>? sqlServer;
  /// Parameters for connecting to Teradata.
  final pulumi.Input<DataSourceParametersTeradata>? teradata;
  /// Parameters for connecting to Twitter.
  final pulumi.Input<DataSourceParametersTwitter>? twitter;

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
      'amazonElasticsearch': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersAmazonElasticsearch, Map<String, dynamic>>(amazonElasticsearch, (value) => value.toMap()),
      'athena': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersAthena, Map<String, dynamic>>(athena, (value) => value.toMap()),
      'aurora': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersAurora, Map<String, dynamic>>(aurora, (value) => value.toMap()),
      'auroraPostgresql': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersAuroraPostgresql, Map<String, dynamic>>(auroraPostgresql, (value) => value.toMap()),
      'awsIotAnalytics': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersAwsIotAnalytics, Map<String, dynamic>>(awsIotAnalytics, (value) => value.toMap()),
      'databricks': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersDatabricks, Map<String, dynamic>>(databricks, (value) => value.toMap()),
      'jira': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersJira, Map<String, dynamic>>(jira, (value) => value.toMap()),
      'mariaDb': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersMariaDb, Map<String, dynamic>>(mariaDb, (value) => value.toMap()),
      'mysql': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersMysql, Map<String, dynamic>>(mysql, (value) => value.toMap()),
      'oracle': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersOracle, Map<String, dynamic>>(oracle, (value) => value.toMap()),
      'postgresql': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersPostgresql, Map<String, dynamic>>(postgresql, (value) => value.toMap()),
      'presto': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersPresto, Map<String, dynamic>>(presto, (value) => value.toMap()),
      'rds': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersRds, Map<String, dynamic>>(rds, (value) => value.toMap()),
      'redshift': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersRedshift, Map<String, dynamic>>(redshift, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
      'serviceNow': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersServiceNow, Map<String, dynamic>>(serviceNow, (value) => value.toMap()),
      'snowflake': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersSnowflake, Map<String, dynamic>>(snowflake, (value) => value.toMap()),
      'spark': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersSpark, Map<String, dynamic>>(spark, (value) => value.toMap()),
      'sqlServer': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersSqlServer, Map<String, dynamic>>(sqlServer, (value) => value.toMap()),
      'teradata': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersTeradata, Map<String, dynamic>>(teradata, (value) => value.toMap()),
      'twitter': ?pulumi.Input.mapOptionalInputValue<DataSourceParametersTwitter, Map<String, dynamic>>(twitter, (value) => value.toMap()),
    };
  }

  factory DataSourceParameters.fromMap(Map<String, dynamic> map) {
    return DataSourceParameters(
      amazonElasticsearch: map['amazonElasticsearch'] == null ? null : (DataSourceParametersAmazonElasticsearch.fromMap((map['amazonElasticsearch'] as Map).cast<String, dynamic>())).input(),
      athena: map['athena'] == null ? null : (DataSourceParametersAthena.fromMap((map['athena'] as Map).cast<String, dynamic>())).input(),
      aurora: map['aurora'] == null ? null : (DataSourceParametersAurora.fromMap((map['aurora'] as Map).cast<String, dynamic>())).input(),
      auroraPostgresql: map['auroraPostgresql'] == null ? null : (DataSourceParametersAuroraPostgresql.fromMap((map['auroraPostgresql'] as Map).cast<String, dynamic>())).input(),
      awsIotAnalytics: map['awsIotAnalytics'] == null ? null : (DataSourceParametersAwsIotAnalytics.fromMap((map['awsIotAnalytics'] as Map).cast<String, dynamic>())).input(),
      databricks: map['databricks'] == null ? null : (DataSourceParametersDatabricks.fromMap((map['databricks'] as Map).cast<String, dynamic>())).input(),
      jira: map['jira'] == null ? null : (DataSourceParametersJira.fromMap((map['jira'] as Map).cast<String, dynamic>())).input(),
      mariaDb: map['mariaDb'] == null ? null : (DataSourceParametersMariaDb.fromMap((map['mariaDb'] as Map).cast<String, dynamic>())).input(),
      mysql: map['mysql'] == null ? null : (DataSourceParametersMysql.fromMap((map['mysql'] as Map).cast<String, dynamic>())).input(),
      oracle: map['oracle'] == null ? null : (DataSourceParametersOracle.fromMap((map['oracle'] as Map).cast<String, dynamic>())).input(),
      postgresql: map['postgresql'] == null ? null : (DataSourceParametersPostgresql.fromMap((map['postgresql'] as Map).cast<String, dynamic>())).input(),
      presto: map['presto'] == null ? null : (DataSourceParametersPresto.fromMap((map['presto'] as Map).cast<String, dynamic>())).input(),
      rds: map['rds'] == null ? null : (DataSourceParametersRds.fromMap((map['rds'] as Map).cast<String, dynamic>())).input(),
      redshift: map['redshift'] == null ? null : (DataSourceParametersRedshift.fromMap((map['redshift'] as Map).cast<String, dynamic>())).input(),
      s3: map['s3'] == null ? null : (DataSourceParametersS3.fromMap((map['s3'] as Map).cast<String, dynamic>())).input(),
      serviceNow: map['serviceNow'] == null ? null : (DataSourceParametersServiceNow.fromMap((map['serviceNow'] as Map).cast<String, dynamic>())).input(),
      snowflake: map['snowflake'] == null ? null : (DataSourceParametersSnowflake.fromMap((map['snowflake'] as Map).cast<String, dynamic>())).input(),
      spark: map['spark'] == null ? null : (DataSourceParametersSpark.fromMap((map['spark'] as Map).cast<String, dynamic>())).input(),
      sqlServer: map['sqlServer'] == null ? null : (DataSourceParametersSqlServer.fromMap((map['sqlServer'] as Map).cast<String, dynamic>())).input(),
      teradata: map['teradata'] == null ? null : (DataSourceParametersTeradata.fromMap((map['teradata'] as Map).cast<String, dynamic>())).input(),
      twitter: map['twitter'] == null ? null : (DataSourceParametersTwitter.fromMap((map['twitter'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

