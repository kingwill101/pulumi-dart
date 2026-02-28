// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_source_config_response.dart';
import 'oracle_source_config_response.dart';
import 'postgresql_source_config_response.dart';

/// The configuration of the stream source.
class SourceConfigResponse {
  /// MySQL data source configuration.
  final MysqlSourceConfigResponse mysqlSourceConfig;
  /// Oracle data source configuration.
  final OracleSourceConfigResponse oracleSourceConfig;
  /// PostgreSQL data source configuration.
  final PostgresqlSourceConfigResponse postgresqlSourceConfig;
  /// Source connection profile resoource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  final String sourceConnectionProfile;

  /// Creates a new [SourceConfigResponse].
  /// [mysqlSourceConfig] MySQL data source configuration.
  /// [oracleSourceConfig] Oracle data source configuration.
  /// [postgresqlSourceConfig] PostgreSQL data source configuration.
  /// [sourceConnectionProfile] Source connection profile resoource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  SourceConfigResponse({
    required this.mysqlSourceConfig,
    required this.oracleSourceConfig,
    required this.postgresqlSourceConfig,
    required this.sourceConnectionProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlSourceConfig': mysqlSourceConfig.toMap(),
      'oracleSourceConfig': oracleSourceConfig.toMap(),
      'postgresqlSourceConfig': postgresqlSourceConfig.toMap(),
      'sourceConnectionProfile': sourceConnectionProfile,
    };
  }

  factory SourceConfigResponse.fromMap(Map<String, dynamic> map) {
    return SourceConfigResponse(
      mysqlSourceConfig: MysqlSourceConfigResponse.fromMap((map['mysqlSourceConfig'] as Map).cast<String, dynamic>()),
      oracleSourceConfig: OracleSourceConfigResponse.fromMap((map['oracleSourceConfig'] as Map).cast<String, dynamic>()),
      postgresqlSourceConfig: PostgresqlSourceConfigResponse.fromMap((map['postgresqlSourceConfig'] as Map).cast<String, dynamic>()),
      sourceConnectionProfile: map['sourceConnectionProfile'] as String,
    );
  }
}

