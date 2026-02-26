// ignore_for_file: unused_element, unnecessary_cast

class DataSourceParametersPresto {
  /// The catalog to which to connect.
  final String catalog;

  /// The host to which to connect.
  final String host;

  /// The port to which to connect.
  final int port;

  DataSourceParametersPresto({
    required this.catalog,
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalog'] = catalog;
    map['host'] = host;
    map['port'] = port;
    return map;
  }

  factory DataSourceParametersPresto.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersPresto(
      catalog: map['catalog'] as String,
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}
