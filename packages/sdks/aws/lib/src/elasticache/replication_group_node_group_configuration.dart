// ignore_for_file: unused_element, unnecessary_cast


class ReplicationGroupNodeGroupConfiguration {
  /// ID for the node group. Redis (cluster mode disabled) replication groups don't have node group IDs, so this value is ignored. For Redis (cluster mode enabled) replication groups, the node group ID is a 1 to 4 character alphanumeric string.
  final String? nodeGroupId;
  /// Availability zone for the primary node.
  final String? primaryAvailabilityZone;
  /// ARN of the Outpost for the primary node.
  final String? primaryOutpostArn;
  /// List of availability zones for the replica nodes.
  final List<String>? replicaAvailabilityZones;
  /// Number of replica nodes in this node group.
  final int? replicaCount;
  /// List of ARNs of the Outposts for the replica nodes.
  final List<String>? replicaOutpostArns;
  /// Keyspace for this node group. Format is `start-end` (e.g., `0-5460`). For Redis (cluster mode disabled) replication groups, this value is ignored.
  final String? slots;

  /// Creates a new [ReplicationGroupNodeGroupConfiguration].
  /// [nodeGroupId] ID for the node group. Redis (cluster mode disabled) replication groups don't have node group IDs, so this value is ignored. For Redis (cluster mode enabled) replication groups, the node group ID is a 1 to 4 character alphanumeric string.
  /// [primaryAvailabilityZone] Availability zone for the primary node.
  /// [primaryOutpostArn] ARN of the Outpost for the primary node.
  /// [replicaAvailabilityZones] List of availability zones for the replica nodes.
  /// [replicaCount] Number of replica nodes in this node group.
  /// [replicaOutpostArns] List of ARNs of the Outposts for the replica nodes.
  /// [slots] Keyspace for this node group. Format is `start-end` (e.g., `0-5460`). For Redis (cluster mode disabled) replication groups, this value is ignored.
  ReplicationGroupNodeGroupConfiguration({
    this.nodeGroupId,
    this.primaryAvailabilityZone,
    this.primaryOutpostArn,
    this.replicaAvailabilityZones,
    this.replicaCount,
    this.replicaOutpostArns,
    this.slots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeGroupId': ?nodeGroupId,
      'primaryAvailabilityZone': ?primaryAvailabilityZone,
      'primaryOutpostArn': ?primaryOutpostArn,
      'replicaAvailabilityZones': ?replicaAvailabilityZones,
      'replicaCount': ?replicaCount,
      'replicaOutpostArns': ?replicaOutpostArns,
      'slots': ?slots,
    };
  }

  factory ReplicationGroupNodeGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return ReplicationGroupNodeGroupConfiguration(
      nodeGroupId: map['nodeGroupId'] == null ? null : map['nodeGroupId'] as String,
      primaryAvailabilityZone: map['primaryAvailabilityZone'] == null ? null : map['primaryAvailabilityZone'] as String,
      primaryOutpostArn: map['primaryOutpostArn'] == null ? null : map['primaryOutpostArn'] as String,
      replicaAvailabilityZones: map['replicaAvailabilityZones'] == null ? null : (map['replicaAvailabilityZones'] as List).cast<String>(),
      replicaCount: map['replicaCount'] == null ? null : map['replicaCount'] as int,
      replicaOutpostArns: map['replicaOutpostArns'] == null ? null : (map['replicaOutpostArns'] as List).cast<String>(),
      slots: map['slots'] == null ? null : map['slots'] as String,
    );
  }
}

