// ignore_for_file: unused_element, unnecessary_cast

/// ApplicationEndpoint represents a remote application endpoint.
class ApplicationEndpointResponse {
  /// Hostname or IP address of the remote application endpoint.
  final String host;

  /// Port of the remote application endpoint.
  final int port;

  ApplicationEndpointResponse({
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['host'] = host;
    map['port'] = port;
    return map;
  }

  factory ApplicationEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationEndpointResponse(
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}
