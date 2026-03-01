// ignore_for_file: unused_element, unnecessary_cast


class DataSourceParametersPresto {
  /// The catalog to which to connect.
  final String catalog;
  /// The host to which to connect.
  final String host;
  /// The port to which to connect.
  final int port;

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
      catalog: map['catalog'] as String,
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}

