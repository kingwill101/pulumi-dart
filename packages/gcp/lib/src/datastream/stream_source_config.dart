// ignore_for_file: unused_element, unnecessary_cast

import 'stream_source_config_mongodb_source_config.dart';
import 'stream_source_config_mysql_source_config.dart';
import 'stream_source_config_oracle_source_config.dart';
import 'stream_source_config_postgresql_source_config.dart';
import 'stream_source_config_salesforce_source_config.dart';
import 'stream_source_config_spanner_source_config.dart';
import 'stream_source_config_sql_server_source_config.dart';

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

  /// Creates a new [StreamSourceConfig].
  /// [mongodbSourceConfig] MongoDB source configuration.
  /// [mysqlSourceConfig] MySQL data source configuration.
  /// [oracleSourceConfig] MySQL data source configuration.
  /// [postgresqlSourceConfig] PostgreSQL data source configuration.
  /// [salesforceSourceConfig] Salesforce data source configuration.
  /// [sourceConnectionProfile] Source connection profile resource. Format: projects/{project}/locations/{location}/connectionProfiles/{name}
  /// [spannerSourceConfig] Spanner data source configuration.
  /// [sqlServerSourceConfig] SQL Server data source configuration.
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
    return <String, dynamic>{
      'mongodbSourceConfig': ?mongodbSourceConfig == null
          ? null
          : mongodbSourceConfig!.toMap(),
      'mysqlSourceConfig': ?mysqlSourceConfig == null
          ? null
          : mysqlSourceConfig!.toMap(),
      'oracleSourceConfig': ?oracleSourceConfig == null
          ? null
          : oracleSourceConfig!.toMap(),
      'postgresqlSourceConfig': ?postgresqlSourceConfig == null
          ? null
          : postgresqlSourceConfig!.toMap(),
      'salesforceSourceConfig': ?salesforceSourceConfig == null
          ? null
          : salesforceSourceConfig!.toMap(),
      'sourceConnectionProfile': sourceConnectionProfile,
      'spannerSourceConfig': ?spannerSourceConfig == null
          ? null
          : spannerSourceConfig!.toMap(),
      'sqlServerSourceConfig': ?sqlServerSourceConfig == null
          ? null
          : sqlServerSourceConfig!.toMap(),
    };
  }

  factory StreamSourceConfig.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfig(
      mongodbSourceConfig: map['mongodbSourceConfig'] == null
          ? null
          : StreamSourceConfigMongodbSourceConfig.fromMap(
              (map['mongodbSourceConfig'] as Map).cast<String, dynamic>(),
            ),
      mysqlSourceConfig: map['mysqlSourceConfig'] == null
          ? null
          : StreamSourceConfigMysqlSourceConfig.fromMap(
              (map['mysqlSourceConfig'] as Map).cast<String, dynamic>(),
            ),
      oracleSourceConfig: map['oracleSourceConfig'] == null
          ? null
          : StreamSourceConfigOracleSourceConfig.fromMap(
              (map['oracleSourceConfig'] as Map).cast<String, dynamic>(),
            ),
      postgresqlSourceConfig: map['postgresqlSourceConfig'] == null
          ? null
          : StreamSourceConfigPostgresqlSourceConfig.fromMap(
              (map['postgresqlSourceConfig'] as Map).cast<String, dynamic>(),
            ),
      salesforceSourceConfig: map['salesforceSourceConfig'] == null
          ? null
          : StreamSourceConfigSalesforceSourceConfig.fromMap(
              (map['salesforceSourceConfig'] as Map).cast<String, dynamic>(),
            ),
      sourceConnectionProfile: map['sourceConnectionProfile'] as String,
      spannerSourceConfig: map['spannerSourceConfig'] == null
          ? null
          : StreamSourceConfigSpannerSourceConfig.fromMap(
              (map['spannerSourceConfig'] as Map).cast<String, dynamic>(),
            ),
      sqlServerSourceConfig: map['sqlServerSourceConfig'] == null
          ? null
          : StreamSourceConfigSqlServerSourceConfig.fromMap(
              (map['sqlServerSourceConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
