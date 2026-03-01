// ignore_for_file: unused_element, unnecessary_cast

class DataSourceParametersSpark {
  /// The host to which to connect.
  final String host;

  /// The warehouse to which to connect.
  final int port;

  /// Creates a new [DataSourceParametersSpark].
  /// [host] The host to which to connect.
  /// [port] The warehouse to which to connect.
  DataSourceParametersSpark({required this.host, required this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'host': host, 'port': port};
  }

  factory DataSourceParametersSpark.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersSpark(
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}
