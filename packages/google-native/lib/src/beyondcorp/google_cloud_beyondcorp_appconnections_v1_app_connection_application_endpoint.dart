// ignore_for_file: unused_element, unnecessary_cast

/// ApplicationEndpoint represents a remote application endpoint.
class GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint {
  /// Hostname or IP address of the remote application endpoint.
  final String host;

  /// Port of the remote application endpoint.
  final int port;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint].
  /// [host] Hostname or IP address of the remote application endpoint.
  /// [port] Port of the remote application endpoint.
  GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint({
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'host': host, 'port': port};
  }

  factory GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint(
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}
