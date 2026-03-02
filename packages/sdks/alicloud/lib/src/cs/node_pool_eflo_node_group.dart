// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolEfloNodeGroup {
  /// The ID of the associated Lingjun cluster is required when creating a Lingjun node pool.
  final pulumi.Input<String>? clusterId;
  /// When creating a Lingjun node pool, you need the Lingjun group ID of the associated Lingjun cluster.
  final pulumi.Input<String>? groupId;

  /// Creates a new [NodePoolEfloNodeGroup].
  /// [clusterId] The ID of the associated Lingjun cluster is required when creating a Lingjun node pool.
  /// [groupId] When creating a Lingjun node pool, you need the Lingjun group ID of the associated Lingjun cluster.
  NodePoolEfloNodeGroup({
    this.clusterId,
    this.groupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'groupId': ?groupId,
    };
  }

  factory NodePoolEfloNodeGroup.fromMap(Map<String, dynamic> map) {
    return NodePoolEfloNodeGroup(
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
    );
  }
}

