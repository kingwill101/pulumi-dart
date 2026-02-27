// ignore_for_file: unused_element, unnecessary_cast

import '../data_source_relational_database_config_http_endpoint_config/data_source_relational_database_config_http_endpoint_config.dart';

class DataSourceRelationalDatabaseConfig {
  /// Amazon RDS HTTP endpoint configuration. See `http_endpoint_config` Block for details.
  final DataSourceRelationalDatabaseConfigHttpEndpointConfig?
      httpEndpointConfig;

  /// Source type for the relational database. Valid values: `RDS_HTTP_ENDPOINT`.
  final String? sourceType;

  DataSourceRelationalDatabaseConfig({
    this.httpEndpointConfig,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final httpEndpointConfigValue = httpEndpointConfig;
    if (httpEndpointConfigValue != null) {
      map['httpEndpointConfig'] = httpEndpointConfigValue.toMap();
    }
    final sourceTypeValue = sourceType;
    if (sourceTypeValue != null) {
      map['sourceType'] = sourceTypeValue;
    }
    return map;
  }

  factory DataSourceRelationalDatabaseConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceRelationalDatabaseConfig(
      httpEndpointConfig: map['httpEndpointConfig'] == null
          ? null
          : DataSourceRelationalDatabaseConfigHttpEndpointConfig.fromMap(
              (map['httpEndpointConfig'] as Map).cast<String, dynamic>()),
      sourceType:
          map['sourceType'] == null ? null : map['sourceType'] as String,
    );
  }
}
