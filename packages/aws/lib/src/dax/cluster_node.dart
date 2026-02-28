// ignore_for_file: unused_element, unnecessary_cast


class ClusterNode {
  final String? address;
  final String? availabilityZone;
  final String? id;
  /// The port used by the configuration endpoint
  final int? port;

  /// Creates a new [ClusterNode].
  /// [address] Optional.
  /// [availabilityZone] Optional.
  /// [id] Optional.
  /// [port] The port used by the configuration endpoint
  ClusterNode({
    this.address,
    this.availabilityZone,
    this.id,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'availabilityZone': ?availabilityZone,
      'id': ?id,
      'port': ?port,
    };
  }

  factory ClusterNode.fromMap(Map<String, dynamic> map) {
    return ClusterNode(
      address: map['address'] == null ? null : map['address'] as String,
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

