// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersPresto {
  /// Catalog to which to connect.
  final pulumi.Input<String> catalog;
  /// Host to which to connect.
  final pulumi.Input<String> host;
  /// Port to which to connect.
  final pulumi.Input<int> port;

  /// Creates a new [DataSourceParametersPresto].
  /// [catalog] Catalog to which to connect.
  /// [host] Host to which to connect.
  /// [port] Port to which to connect.
  const DataSourceParametersPresto({
    required this.catalog,
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalog': catalog,
      'host': host,
      'port': port,
    };
  }

  factory DataSourceParametersPresto.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersPresto(
      catalog: pulumi.Input.fromValue(map['catalog'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
    );
  }
}
