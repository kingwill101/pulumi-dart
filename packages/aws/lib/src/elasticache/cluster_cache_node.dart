// ignore_for_file: unused_element, unnecessary_cast

class ClusterCacheNode {
  final String? address;

  /// Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use `preferred_availability_zones` instead. Default: System chosen Availability Zone. Changing this value will re-create the resource.
  final String? availabilityZone;
  final String? id;
  final String? outpostArn;

  /// The port number on which each of the cache nodes will accept connections. For Memcached the default is 11211, and for Redis the default port is 6379. Cannot be provided with `replication_group_id`. Changing this value will re-create the resource.
  final int? port;

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
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final outpostArnValue = outpostArn;
    if (outpostArnValue != null) {
      map['outpostArn'] = outpostArnValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    return map;
  }

  factory ClusterCacheNode.fromMap(Map<String, dynamic> map) {
    return ClusterCacheNode(
      address: map['address'] == null ? null : map['address'] as String,
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      outpostArn:
          map['outpostArn'] == null ? null : map['outpostArn'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
