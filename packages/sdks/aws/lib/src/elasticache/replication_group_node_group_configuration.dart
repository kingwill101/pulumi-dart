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
  const ReplicationGroupNodeGroupConfiguration({
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
      nodeGroupId: (() { final guardedValue = map['nodeGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryAvailabilityZone: (() { final guardedValue = map['primaryAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryOutpostArn: (() { final guardedValue = map['primaryOutpostArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaAvailabilityZones: (() { final guardedValue = map['replicaAvailabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicaOutpostArns: (() { final guardedValue = map['replicaOutpostArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      slots: (() { final guardedValue = map['slots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

