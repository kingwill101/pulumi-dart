// ignore_for_file: unused_element, unnecessary_cast


class ClusterClusterEndpoint {
  /// DNS hostname of the node.
  final String? address;
  /// The port number on which each of the nodes accepts connections. Defaults to `6379`.
  final int? port;

  /// Creates a new [ClusterClusterEndpoint].
  /// [address] DNS hostname of the node.
  /// [port] The port number on which each of the nodes accepts connections. Defaults to `6379`.
  ClusterClusterEndpoint({
    this.address,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
    };
  }

  factory ClusterClusterEndpoint.fromMap(Map<String, dynamic> map) {
    return ClusterClusterEndpoint(
      address: map['address'] == null ? null : map['address'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

