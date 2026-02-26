// ignore_for_file: unused_element, unnecessary_cast

/// A network endpoint over which a TPU worker can be reached.
class NetworkEndpointResponse2 {
  /// The IP address of this network endpoint.
  final String ipAddress;

  /// The port of this network endpoint.
  final int port;

  NetworkEndpointResponse2({
    required this.ipAddress,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddress'] = ipAddress;
    map['port'] = port;
    return map;
  }

  factory NetworkEndpointResponse2.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointResponse2(
      ipAddress: map['ipAddress'] as String,
      port: map['port'] as int,
    );
  }
}
