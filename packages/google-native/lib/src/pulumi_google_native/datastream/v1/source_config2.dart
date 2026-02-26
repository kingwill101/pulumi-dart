// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_source_config.dart';
import 'oracle_source_config.dart';
import 'postgresql_source_config.dart';

/// The configuration of the stream source.
class SourceConfig2 {
  /// MySQL data source configuration.
  final MysqlSourceConfig? mysqlSourceConfig;

  /// Oracle data source configuration.
  final OracleSourceConfig? oracleSourceConfig;

  /// PostgreSQL data source configuration.
  final PostgresqlSourceConfig? postgresqlSourceConfig;

  /// Source connection profile resoource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  final String sourceConnectionProfile;

  SourceConfig2({
    this.mysqlSourceConfig,
    this.oracleSourceConfig,
    this.postgresqlSourceConfig,
    required this.sourceConnectionProfile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    map['sourceConnectionProfile'] = sourceConnectionProfile;
    return map;
  }

  factory SourceConfig2.fromMap(Map<String, dynamic> map) {
    return SourceConfig2(
      mysqlSourceConfig: map['mysqlSourceConfig'] == null
          ? null
          : MysqlSourceConfig.fromMap(
              (map['mysqlSourceConfig'] as Map).cast<String, dynamic>()),
      oracleSourceConfig: map['oracleSourceConfig'] == null
          ? null
          : OracleSourceConfig.fromMap(
              (map['oracleSourceConfig'] as Map).cast<String, dynamic>()),
      postgresqlSourceConfig: map['postgresqlSourceConfig'] == null
          ? null
          : PostgresqlSourceConfig.fromMap(
              (map['postgresqlSourceConfig'] as Map).cast<String, dynamic>()),
      sourceConnectionProfile: map['sourceConnectionProfile'] as String,
    );
  }
}
