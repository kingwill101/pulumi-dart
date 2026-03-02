// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicationGroupNodeGroupConfiguration {
  /// ID for the node group. Redis (cluster mode disabled) replication groups don't have node group IDs, so this value is ignored. For Redis (cluster mode enabled) replication groups, the node group ID is a 1 to 4 character alphanumeric string.
  final pulumi.Input<String>? nodeGroupId;
  /// Availability zone for the primary node.
  final pulumi.Input<String>? primaryAvailabilityZone;
  /// ARN of the Outpost for the primary node.
  final pulumi.Input<String>? primaryOutpostArn;
  /// List of availability zones for the replica nodes.
  final pulumi.Input<List<String>>? replicaAvailabilityZones;
  /// Number of replica nodes in this node group.
  final pulumi.Input<int>? replicaCount;
  /// List of ARNs of the Outposts for the replica nodes.
  final pulumi.Input<List<String>>? replicaOutpostArns;
  /// Keyspace for this node group. Format is `start-end` (e.g., `0-5460`). For Redis (cluster mode disabled) replication groups, this value is ignored.
  final pulumi.Input<String>? slots;

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
      nodeGroupId: map['nodeGroupId'] == null ? null : (map['nodeGroupId'] as String).input(),
      primaryAvailabilityZone: map['primaryAvailabilityZone'] == null ? null : (map['primaryAvailabilityZone'] as String).input(),
      primaryOutpostArn: map['primaryOutpostArn'] == null ? null : (map['primaryOutpostArn'] as String).input(),
      replicaAvailabilityZones: map['replicaAvailabilityZones'] == null ? null : ((map['replicaAvailabilityZones'] as List).cast<String>()).input(),
      replicaCount: map['replicaCount'] == null ? null : (map['replicaCount'] as int).input(),
      replicaOutpostArns: map['replicaOutpostArns'] == null ? null : ((map['replicaOutpostArns'] as List).cast<String>()).input(),
      slots: map['slots'] == null ? null : (map['slots'] as String).input(),
    );
  }
}

