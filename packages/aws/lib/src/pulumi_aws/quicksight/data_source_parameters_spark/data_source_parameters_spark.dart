// ignore_for_file: unused_element, unnecessary_cast

class DataSourceParametersSpark {
  /// The host to which to connect.
  final String host;

  /// The warehouse to which to connect.
  final int port;

  DataSourceParametersSpark({
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['host'] = host;
    map['port'] = port;
    return map;
  }

  factory DataSourceParametersSpark.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersSpark(
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}
