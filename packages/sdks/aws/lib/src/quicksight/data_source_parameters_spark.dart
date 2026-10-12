// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersSpark {
  /// Host to which to connect.
  final pulumi.Input<String> host;
  /// Port to which to connect.
  final pulumi.Input<int> port;

  /// Creates a new [DataSourceParametersSpark].
  /// [host] Host to which to connect.
  /// [port] Port to which to connect.
  const DataSourceParametersSpark({
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'port': port,
    };
  }

  factory DataSourceParametersSpark.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersSpark(
      host: pulumi.Input.fromValue(map['host'] as String),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
    );
  }
}
