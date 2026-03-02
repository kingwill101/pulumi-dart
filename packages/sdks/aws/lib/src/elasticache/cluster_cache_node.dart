// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterCacheNode {
  final pulumi.Input<String>? address;
  /// Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use `preferred_availability_zones` instead. Default: System chosen Availability Zone. Changing this value will re-create the resource.
  final pulumi.Input<String>? availabilityZone;
  final pulumi.Input<String>? id;
  final pulumi.Input<String>? outpostArn;
  /// The port number on which each of the cache nodes will accept connections. For Memcached the default is 11211, and for Redis the default port is 6379. Cannot be provided with `replication_group_id`. Changing this value will re-create the resource.
  final pulumi.Input<int>? port;

  /// Creates a new [ClusterCacheNode].
  /// [address] Optional.
  /// [availabilityZone] Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use `preferred_availability_zones` instead. Default: System chosen Availability Zone. Changing this value will re-create the resource.
  /// [id] Optional.
  /// [outpostArn] Optional.
  /// [port] The port number on which each of the cache nodes will accept connections. For Memcached the default is 11211, and for Redis the default port is 6379. Cannot be provided with `replication_group_id`. Changing this value will re-create the resource.
  ClusterCacheNode({
    this.address,
    this.availabilityZone,
    this.id,
    this.outpostArn,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'availabilityZone': ?availabilityZone,
      'id': ?id,
      'outpostArn': ?outpostArn,
      'port': ?port,
    };
  }

  factory ClusterCacheNode.fromMap(Map<String, dynamic> map) {
    return ClusterCacheNode(
      address: map['address'] == null ? null : (map['address'] as String).input(),
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      outpostArn: map['outpostArn'] == null ? null : (map['outpostArn'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
    );
  }
}

