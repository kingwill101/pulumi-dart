// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterCacheNode {
  final pulumi.Input<String> address;
  /// Availability Zone for the cache cluster.
  final pulumi.Input<String> availabilityZone;
  final pulumi.Input<String> id;
  final pulumi.Input<String> outpostArn;
  /// The port number on which each of the cache nodes will
  /// accept connections.
  final pulumi.Input<int> port;

  /// Creates a new [GetClusterCacheNode].
  /// [address] Required.
  /// [availabilityZone] Availability Zone for the cache cluster.
  /// [id] Required.
  /// [outpostArn] Required.
  /// [port] The port number on which each of the cache nodes will
  const GetClusterCacheNode({
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
      address: pulumi.Input.fromValue(map['address'] as String),
      availabilityZone: pulumi.Input.fromValue(map['availabilityZone'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      outpostArn: pulumi.Input.fromValue(map['outpostArn'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}

