// ignore_for_file: unused_element, unnecessary_cast

import '../stream_source_config_mongodb_source_config/stream_source_config_mongodb_source_config.dart';
import '../stream_source_config_mysql_source_config/stream_source_config_mysql_source_config.dart';
import '../stream_source_config_oracle_source_config/stream_source_config_oracle_source_config.dart';
import '../stream_source_config_postgresql_source_config/stream_source_config_postgresql_source_config.dart';
import '../stream_source_config_salesforce_source_config/stream_source_config_salesforce_source_config.dart';
import '../stream_source_config_spanner_source_config/stream_source_config_spanner_source_config.dart';
import '../stream_source_config_sql_server_source_config/stream_source_config_sql_server_source_config.dart';

class StreamSourceConfig {
  /// MongoDB source configuration.
  /// Structure is documented below.
  final StreamSourceConfigMongodbSourceConfig? mongodbSourceConfig;

  /// MySQL data source configuration.
  /// Structure is documented below.
  final StreamSourceConfigMysqlSourceConfig? mysqlSourceConfig;

  /// MySQL data source configuration.
  /// Structure is documented below.
  final StreamSourceConfigOracleSourceConfig? oracleSourceConfig;

  /// PostgreSQL data source configuration.
  /// Structure is documented below.
  final StreamSourceConfigPostgresqlSourceConfig? postgresqlSourceConfig;

  /// Salesforce data source configuration.
  /// Structure is documented below.
  final StreamSourceConfigSalesforceSourceConfig? salesforceSourceConfig;

  /// Source connection profile resource. Format: projects/{project}/locations/{location}/connectionProfiles/{name}
  final String sourceConnectionProfile;

  /// Spanner data source configuration.
  /// Structure is documented below.
  final StreamSourceConfigSpannerSourceConfig? spannerSourceConfig;

  /// SQL Server data source configuration.
  /// Structure is documented below.
  final StreamSourceConfigSqlServerSourceConfig? sqlServerSourceConfig;

  StreamSourceConfig({
    this.mongodbSourceConfig,
    this.mysqlSourceConfig,
    this.oracleSourceConfig,
    this.postgresqlSourceConfig,
    this.salesforceSourceConfig,
    required this.sourceConnectionProfile,
    this.spannerSourceConfig,
    this.sqlServerSourceConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mongodbSourceConfigValue = mongodbSourceConfig;
    if (mongodbSourceConfigValue != null) {
      map['mongodbSourceConfig'] = mongodbSourceConfigValue.toMap();
    }
    final mysqlSourceConfigValue = mysqlSourceConfig;
    if (mysqlSourceConfigValue != null) {
      map['mysqlSourceConfig'] = mysqlSourceConfigValue.toMap();
    }
    final oracleSourceConfigValue = oracleSourceConfig;
    if (oracleSourceConfigValue != null) {
      map['oracleSourceConfig'] = oracleSourceConfigValue.toMap();
    }
    final postgresqlSourceConfigValue = postgresqlSourceConfig;
    if (postgresqlSourceConfigValue != null) {
      map['postgresqlSourceConfig'] = postgresqlSourceConfigValue.toMap();
    }
    final salesforceSourceConfigValue = salesforceSourceConfig;
    if (salesforceSourceConfigValue != null) {
      map['salesforceSourceConfig'] = salesforceSourceConfigValue.toMap();
    }
    map['sourceConnectionProfile'] = sourceConnectionProfile;
    final spannerSourceConfigValue = spannerSourceConfig;
    if (spannerSourceConfigValue != null) {
      map['spannerSourceConfig'] = spannerSourceConfigValue.toMap();
    }
    final sqlServerSourceConfigValue = sqlServerSourceConfig;
    if (sqlServerSourceConfigValue != null) {
      map['sqlServerSourceConfig'] = sqlServerSourceConfigValue.toMap();
    }
    return map;
  }

  factory StreamSourceConfig.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfig(
      mongodbSourceConfig: map['mongodbSourceConfig'] == null
          ? null
          : StreamSourceConfigMongodbSourceConfig.fromMap(
              (map['mongodbSourceConfig'] as Map).cast<String, dynamic>()),
      mysqlSourceConfig: map['mysqlSourceConfig'] == null
          ? null
          : StreamSourceConfigMysqlSourceConfig.fromMap(
              (map['mysqlSourceConfig'] as Map).cast<String, dynamic>()),
      oracleSourceConfig: map['oracleSourceConfig'] == null
          ? null
          : StreamSourceConfigOracleSourceConfig.fromMap(
              (map['oracleSourceConfig'] as Map).cast<String, dynamic>()),
      postgresqlSourceConfig: map['postgresqlSourceConfig'] == null
          ? null
          : StreamSourceConfigPostgresqlSourceConfig.fromMap(
              (map['postgresqlSourceConfig'] as Map).cast<String, dynamic>()),
      salesforceSourceConfig: map['salesforceSourceConfig'] == null
          ? null
          : StreamSourceConfigSalesforceSourceConfig.fromMap(
              (map['salesforceSourceConfig'] as Map).cast<String, dynamic>()),
      sourceConnectionProfile: map['sourceConnectionProfile'] as String,
      spannerSourceConfig: map['spannerSourceConfig'] == null
          ? null
          : StreamSourceConfigSpannerSourceConfig.fromMap(
              (map['spannerSourceConfig'] as Map).cast<String, dynamic>()),
      sqlServerSourceConfig: map['sqlServerSourceConfig'] == null
          ? null
          : StreamSourceConfigSqlServerSourceConfig.fromMap(
              (map['sqlServerSourceConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
