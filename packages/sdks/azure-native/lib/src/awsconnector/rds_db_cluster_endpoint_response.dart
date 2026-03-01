// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Endpoint
class RdsDbClusterEndpointResponse {
  /// The connection endpoint for the DB cluster.
  final String? address;
  /// The port number that will accept connections on this DB cluster.
  final String? port;

  /// Creates a new [RdsDbClusterEndpointResponse].
  /// [address] The connection endpoint for the DB cluster.
  /// [port] The port number that will accept connections on this DB cluster.
  RdsDbClusterEndpointResponse({
    this.address,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
    };
  }

  factory RdsDbClusterEndpointResponse.fromMap(Map<String, dynamic> map) {
    return RdsDbClusterEndpointResponse(
      address: map['address'] == null ? null : map['address'] as String,
      port: map['port'] == null ? null : map['port'] as String,
    );
  }
}

