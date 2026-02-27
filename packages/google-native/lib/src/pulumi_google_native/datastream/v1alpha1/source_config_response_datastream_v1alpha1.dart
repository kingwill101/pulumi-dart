// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_source_config_response_datastream_v1alpha1.dart';
import 'oracle_source_config_response_datastream_v1alpha1.dart';

/// The configuration of the stream source.
class SourceConfigResponseDatastreamV1alpha1 {
  /// MySQL data source configuration
  final MysqlSourceConfigResponseDatastreamV1alpha1 mysqlSourceConfig;

  /// Oracle data source configuration
  final OracleSourceConfigResponseDatastreamV1alpha1 oracleSourceConfig;

  /// Source connection profile identifier.
  final String sourceConnectionProfileName;

  SourceConfigResponseDatastreamV1alpha1({
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

  factory SourceConfigResponseDatastreamV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return SourceConfigResponseDatastreamV1alpha1(
      mysqlSourceConfig: MysqlSourceConfigResponseDatastreamV1alpha1.fromMap(
          (map['mysqlSourceConfig'] as Map).cast<String, dynamic>()),
      oracleSourceConfig: OracleSourceConfigResponseDatastreamV1alpha1.fromMap(
          (map['oracleSourceConfig'] as Map).cast<String, dynamic>()),
      sourceConnectionProfileName: map['sourceConnectionProfileName'] as String,
    );
  }
}
