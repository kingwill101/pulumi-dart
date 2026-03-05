// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersDatabricks {
  /// The host name of the Databricks data source.
  final pulumi.Input<String> host;
  /// The port for the Databricks data source.
  final pulumi.Input<int> port;
  /// The HTTP path of the Databricks data source.
  final pulumi.Input<String> sqlEndpointPath;

  /// Creates a new [DataSourceParametersDatabricks].
  /// [host] The host name of the Databricks data source.
  /// [port] The port for the Databricks data source.
  /// [sqlEndpointPath] The HTTP path of the Databricks data source.
  DataSourceParametersDatabricks({
    required this.host,
    required this.port,
    required this.sqlEndpointPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'port': port,
      'sqlEndpointPath': sqlEndpointPath,
    };
  }

  factory DataSourceParametersDatabricks.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersDatabricks(
      host: pulumi.Input.fromValue(map['host'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      sqlEndpointPath: pulumi.Input.fromValue(map['sqlEndpointPath'] as String),
    );
  }
}

