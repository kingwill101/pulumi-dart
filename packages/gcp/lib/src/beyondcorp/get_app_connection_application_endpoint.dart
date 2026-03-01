// ignore_for_file: unused_element, unnecessary_cast

class GetAppConnectionApplicationEndpoint {
  /// Hostname or IP address of the remote application endpoint.
  final String host;

  /// Port of the remote application endpoint.
  final int port;

  /// Creates a new [GetAppConnectionApplicationEndpoint].
  /// [host] Hostname or IP address of the remote application endpoint.
  /// [port] Port of the remote application endpoint.
  GetAppConnectionApplicationEndpoint({required this.host, required this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'host': host, 'port': port};
  }

  factory GetAppConnectionApplicationEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAppConnectionApplicationEndpoint(
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}
