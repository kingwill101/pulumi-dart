// ignore_for_file: unused_element, unnecessary_cast

/// A network endpoint over which a TPU worker can be reached.
class NetworkEndpointResponse {
  /// The IP address of this network endpoint.
  final String ipAddress;

  /// The port of this network endpoint.
  final int port;

  /// Creates a new [NetworkEndpointResponse].
  /// [ipAddress] The IP address of this network endpoint.
  /// [port] The port of this network endpoint.
  NetworkEndpointResponse({
    required this.ipAddress,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddress'] = ipAddress;
    map['port'] = port;
    return map;
  }

  factory NetworkEndpointResponse.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointResponse(
      ipAddress: map['ipAddress'] as String,
      port: map['port'] as int,
    );
  }
}
