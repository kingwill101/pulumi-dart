// ignore_for_file: unused_element, unnecessary_cast

/// A network endpoint over which a TPU worker can be reached.
class NetworkEndpointResponseTpuV1alpha1 {
  /// The IP address of this network endpoint.
  final String ipAddress;

  /// The port of this network endpoint.
  final int port;

  NetworkEndpointResponseTpuV1alpha1({
    required this.ipAddress,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddress'] = ipAddress;
    map['port'] = port;
    return map;
  }

  factory NetworkEndpointResponseTpuV1alpha1.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointResponseTpuV1alpha1(
      ipAddress: map['ipAddress'] as String,
      port: map['port'] as int,
    );
  }
}
