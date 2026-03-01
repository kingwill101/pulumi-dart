// ignore_for_file: unused_element, unnecessary_cast

class GetReplicationGroupNodeGroupConfiguration {
  /// ID of the node group.
  final String nodeGroupId;

  /// Availability Zone for the primary node.
  final String primaryAvailabilityZone;

  /// Outpost ARN of the primary node.
  final String primaryOutpostArn;

  /// List of Availability Zones for the replica nodes.
  final List<String> replicaAvailabilityZones;

  /// Number of replica nodes in this node group.
  final int replicaCount;

  /// List of outpost ARNs for the replica nodes.
  final List<String> replicaOutpostArns;

  /// Keyspace for this node group (shard).
  final String slots;

  /// Creates a new [GetReplicationGroupNodeGroupConfiguration].
  /// [nodeGroupId] ID of the node group.
  /// [primaryAvailabilityZone] Availability Zone for the primary node.
  /// [primaryOutpostArn] Outpost ARN of the primary node.
  /// [replicaAvailabilityZones] List of Availability Zones for the replica nodes.
  /// [replicaCount] Number of replica nodes in this node group.
  /// [replicaOutpostArns] List of outpost ARNs for the replica nodes.
  /// [slots] Keyspace for this node group (shard).
  GetReplicationGroupNodeGroupConfiguration({
    required this.nodeGroupId,
    required this.primaryAvailabilityZone,
    required this.primaryOutpostArn,
    required this.replicaAvailabilityZones,
    required this.replicaCount,
    required this.replicaOutpostArns,
    required this.slots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeGroupId': nodeGroupId,
      'primaryAvailabilityZone': primaryAvailabilityZone,
      'primaryOutpostArn': primaryOutpostArn,
      'replicaAvailabilityZones': replicaAvailabilityZones,
      'replicaCount': replicaCount,
      'replicaOutpostArns': replicaOutpostArns,
      'slots': slots,
    };
  }

  factory GetReplicationGroupNodeGroupConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetReplicationGroupNodeGroupConfiguration(
      nodeGroupId: map['nodeGroupId'] as String,
      primaryAvailabilityZone: map['primaryAvailabilityZone'] as String,
      primaryOutpostArn: map['primaryOutpostArn'] as String,
      replicaAvailabilityZones: (map['replicaAvailabilityZones'] as List)
          .cast<String>(),
      replicaCount: map['replicaCount'] as int,
      replicaOutpostArns: (map['replicaOutpostArns'] as List).cast<String>(),
      slots: map['slots'] as String,
    );
  }
}
