// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_ip_allocation_policy_node_policy_bond.dart';

class NodeGroupIpAllocationPolicyNodePolicy {
  /// Bond information See `bonds` below.
  final pulumi.Input<List<NodeGroupIpAllocationPolicyNodePolicyBond>>? bonds;
  final pulumi.Input<String>? nodeId;

  /// Creates a new [NodeGroupIpAllocationPolicyNodePolicy].
  /// [bonds] Bond information See `bonds` below.
  /// [nodeId] Optional.
  const NodeGroupIpAllocationPolicyNodePolicy({
    this.bonds,
    this.nodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bonds': ?pulumi.Input.mapOptionalInputValue<List<NodeGroupIpAllocationPolicyNodePolicyBond>, List<Map<String, dynamic>>>(bonds, (value) => pulumi.Input.encodeList<NodeGroupIpAllocationPolicyNodePolicyBond, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeId': ?nodeId,
    };
  }

  factory NodeGroupIpAllocationPolicyNodePolicy.fromMap(Map<String, dynamic> map) {
    return NodeGroupIpAllocationPolicyNodePolicy(
      bonds: (() { final guardedValue = map['bonds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeGroupIpAllocationPolicyNodePolicyBond>(guardedValue, (value) => NodeGroupIpAllocationPolicyNodePolicyBond.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

