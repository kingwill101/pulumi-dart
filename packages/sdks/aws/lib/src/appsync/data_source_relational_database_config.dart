// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_relational_database_config_http_endpoint_config.dart';

class DataSourceRelationalDatabaseConfig {
  /// Amazon RDS HTTP endpoint configuration. See `httpEndpointConfig` Block for details.
  final pulumi.Input<DataSourceRelationalDatabaseConfigHttpEndpointConfig?>? httpEndpointConfig;
  /// Source type for the relational database. Valid values: `RDS_HTTP_ENDPOINT`.
  final pulumi.Input<String?>? sourceType;

  /// Creates a new [DataSourceRelationalDatabaseConfig].
  /// [httpEndpointConfig] Amazon RDS HTTP endpoint configuration. See `httpEndpointConfig` Block for details.
  /// [sourceType] Source type for the relational database. Valid values: `RDS_HTTP_ENDPOINT`.
  const DataSourceRelationalDatabaseConfig({
    this.httpEndpointConfig,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpEndpointConfig': ?pulumi.Input.mapOptionalInputValue<DataSourceRelationalDatabaseConfigHttpEndpointConfig, Map<String, dynamic>>(httpEndpointConfig, (value) => value.toMap()),
      'sourceType': ?sourceType,
    };
  }

  factory DataSourceRelationalDatabaseConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceRelationalDatabaseConfig(
      httpEndpointConfig: (() { final guardedValue = map['httpEndpointConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceRelationalDatabaseConfigHttpEndpointConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
