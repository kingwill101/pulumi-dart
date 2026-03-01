// ignore_for_file: unused_element, unnecessary_cast


class GetClusterCacheNode {
  final String address;
  /// Availability Zone for the cache cluster.
  final String availabilityZone;
  final String id;
  final String outpostArn;
  /// The port number on which each of the cache nodes will
  /// accept connections.
  final int port;

  /// Creates a new [GetClusterCacheNode].
  /// [address] Required.
  /// [availabilityZone] Availability Zone for the cache cluster.
  /// [id] Required.
  /// [outpostArn] Required.
  /// [port] The port number on which each of the cache nodes will
  GetClusterCacheNode({
    required this.address,
    required this.availabilityZone,
    required this.id,
    required this.outpostArn,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'availabilityZone': availabilityZone,
      'id': id,
      'outpostArn': outpostArn,
      'port': port,
    };
  }

  factory GetClusterCacheNode.fromMap(Map<String, dynamic> map) {
    return GetClusterCacheNode(
      address: map['address'] as String,
      availabilityZone: map['availabilityZone'] as String,
      id: map['id'] as String,
      outpostArn: map['outpostArn'] as String,
      port: map['port'] as int,
    );
  }
}

