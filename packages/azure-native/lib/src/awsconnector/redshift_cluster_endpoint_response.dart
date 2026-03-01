// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Endpoint
class RedshiftClusterEndpointResponse {
  /// Property address
  final String? address;
  /// Property port
  final String? port;

  /// Creates a new [RedshiftClusterEndpointResponse].
  /// [address] Property address
  /// [port] Property port
  RedshiftClusterEndpointResponse({
    this.address,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
    };
  }

  factory RedshiftClusterEndpointResponse.fromMap(Map<String, dynamic> map) {
    return RedshiftClusterEndpointResponse(
      address: map['address'] == null ? null : map['address'] as String,
      port: map['port'] == null ? null : map['port'] as String,
    );
  }
}

