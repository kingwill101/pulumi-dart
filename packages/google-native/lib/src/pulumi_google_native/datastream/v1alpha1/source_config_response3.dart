// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_source_config_response2.dart';
import 'oracle_source_config_response2.dart';

/// The configuration of the stream source.
class SourceConfigResponse3 {
  /// MySQL data source configuration
  final MysqlSourceConfigResponse2 mysqlSourceConfig;

  /// Oracle data source configuration
  final OracleSourceConfigResponse2 oracleSourceConfig;

  /// Source connection profile identifier.
  final String sourceConnectionProfileName;

  SourceConfigResponse3({
    required this.mysqlSourceConfig,
    required this.oracleSourceConfig,
    required this.sourceConnectionProfileName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mysqlSourceConfig'] = mysqlSourceConfig.toMap();
    map['oracleSourceConfig'] = oracleSourceConfig.toMap();
    map['sourceConnectionProfileName'] = sourceConnectionProfileName;
    return map;
  }

  factory SourceConfigResponse3.fromMap(Map<String, dynamic> map) {
    return SourceConfigResponse3(
      mysqlSourceConfig: MysqlSourceConfigResponse2.fromMap(
          (map['mysqlSourceConfig'] as Map).cast<String, dynamic>()),
      oracleSourceConfig: OracleSourceConfigResponse2.fromMap(
          (map['oracleSourceConfig'] as Map).cast<String, dynamic>()),
      sourceConnectionProfileName: map['sourceConnectionProfileName'] as String,
    );
  }
}
