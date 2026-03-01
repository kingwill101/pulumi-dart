// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Endpoint
class RdsDbClusterEndpoint {
  /// The connection endpoint for the DB cluster.
  final String? address;
  /// The port number that will accept connections on this DB cluster.
  final String? port;

  /// Creates a new [RdsDbClusterEndpoint].
  /// [address] The connection endpoint for the DB cluster.
  /// [port] The port number that will accept connections on this DB cluster.
  RdsDbClusterEndpoint({
    this.address,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
    };
  }

  factory RdsDbClusterEndpoint.fromMap(Map<String, dynamic> map) {
    return RdsDbClusterEndpoint(
      address: map['address'] == null ? null : map['address'] as String,
      port: map['port'] == null ? null : map['port'] as String,
    );
  }
}

