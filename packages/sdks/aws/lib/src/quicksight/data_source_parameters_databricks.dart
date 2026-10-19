// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersDatabricks {
  /// Host name of the Databricks data source.
  final pulumi.Input<String> host;
  /// Port for the Databricks data source.
  final pulumi.Input<int> port;
  /// HTTP path of the Databricks data source.
  final pulumi.Input<String> sqlEndpointPath;

  /// Creates a new [DataSourceParametersDatabricks].
  /// [host] Host name of the Databricks data source.
  /// [port] Port for the Databricks data source.
  /// [sqlEndpointPath] HTTP path of the Databricks data source.
  const DataSourceParametersDatabricks({
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
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      sqlEndpointPath: pulumi.Input.fromValue(map['sqlEndpointPath'] as String),
    );
  }
}
