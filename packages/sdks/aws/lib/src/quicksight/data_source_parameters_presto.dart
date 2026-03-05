// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersPresto {
  /// The catalog to which to connect.
  final pulumi.Input<String> catalog;
  /// The host to which to connect.
  final pulumi.Input<String> host;
  /// The port to which to connect.
  final pulumi.Input<int> port;

  /// Creates a new [DataSourceParametersPresto].
  /// [catalog] The catalog to which to connect.
  /// [host] The host to which to connect.
  /// [port] The port to which to connect.
  DataSourceParametersPresto({
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
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}

