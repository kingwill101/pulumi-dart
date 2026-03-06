// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReplicationGroupNodeGroupConfiguration {
  /// ID of the node group.
  final pulumi.Input<String> nodeGroupId;
  /// Availability Zone for the primary node.
  final pulumi.Input<String> primaryAvailabilityZone;
  /// Outpost ARN of the primary node.
  final pulumi.Input<String> primaryOutpostArn;
  /// List of Availability Zones for the replica nodes.
  final pulumi.Input<List<String>> replicaAvailabilityZones;
  /// Number of replica nodes in this node group.
  final pulumi.Input<int> replicaCount;
  /// List of outpost ARNs for the replica nodes.
  final pulumi.Input<List<String>> replicaOutpostArns;
  /// Keyspace for this node group (shard).
  final pulumi.Input<String> slots;

  /// Creates a new [GetReplicationGroupNodeGroupConfiguration].
  /// [nodeGroupId] ID of the node group.
  /// [primaryAvailabilityZone] Availability Zone for the primary node.
  /// [primaryOutpostArn] Outpost ARN of the primary node.
  /// [replicaAvailabilityZones] List of Availability Zones for the replica nodes.
  /// [replicaCount] Number of replica nodes in this node group.
  /// [replicaOutpostArns] List of outpost ARNs for the replica nodes.
  /// [slots] Keyspace for this node group (shard).
  const GetReplicationGroupNodeGroupConfiguration({
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

  factory GetReplicationGroupNodeGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return GetReplicationGroupNodeGroupConfiguration(
      nodeGroupId: pulumi.Input.fromValue(map['nodeGroupId'] as String),
      primaryAvailabilityZone: pulumi.Input.fromValue(map['primaryAvailabilityZone'] as String),
      primaryOutpostArn: pulumi.Input.fromValue(map['primaryOutpostArn'] as String),
      replicaAvailabilityZones: pulumi.Input.fromValue((map['replicaAvailabilityZones'] as List).cast<String>()),
      replicaCount: pulumi.Input.fromValue(map['replicaCount'] as int),
      replicaOutpostArns: pulumi.Input.fromValue((map['replicaOutpostArns'] as List).cast<String>()),
      slots: pulumi.Input.fromValue(map['slots'] as String),
    );
  }
}

