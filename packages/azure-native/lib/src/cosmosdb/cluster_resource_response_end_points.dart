// ignore_for_file: unused_element, unnecessary_cast


class ClusterResourceResponseEndPoints {
  /// Ipv4 address of the endpoint
  final String? ipAddress;
  /// Port number
  final int? port;

  /// Creates a new [ClusterResourceResponseEndPoints].
  /// [ipAddress] Ipv4 address of the endpoint
  /// [port] Port number
  ClusterResourceResponseEndPoints({
    this.ipAddress,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'port': ?port,
    };
  }

  factory ClusterResourceResponseEndPoints.fromMap(Map<String, dynamic> map) {
    return ClusterResourceResponseEndPoints(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

