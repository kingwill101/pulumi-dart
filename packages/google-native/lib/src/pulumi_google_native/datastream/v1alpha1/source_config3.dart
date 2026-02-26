// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_source_config2.dart';
import 'oracle_source_config2.dart';

/// The configuration of the stream source.
class SourceConfig3 {
  /// MySQL data source configuration
  final MysqlSourceConfig2? mysqlSourceConfig;

  /// Oracle data source configuration
  final OracleSourceConfig2? oracleSourceConfig;

  /// Source connection profile identifier.
  final String sourceConnectionProfileName;

  SourceConfig3({
    this.mysqlSourceConfig,
    this.oracleSourceConfig,
    required this.sourceConnectionProfileName,
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
    map['sourceConnectionProfileName'] = sourceConnectionProfileName;
    return map;
  }

  factory SourceConfig3.fromMap(Map<String, dynamic> map) {
    return SourceConfig3(
      mysqlSourceConfig: map['mysqlSourceConfig'] == null
          ? null
          : MysqlSourceConfig2.fromMap(
              (map['mysqlSourceConfig'] as Map).cast<String, dynamic>()),
      oracleSourceConfig: map['oracleSourceConfig'] == null
          ? null
          : OracleSourceConfig2.fromMap(
              (map['oracleSourceConfig'] as Map).cast<String, dynamic>()),
      sourceConnectionProfileName: map['sourceConnectionProfileName'] as String,
    );
  }
}
