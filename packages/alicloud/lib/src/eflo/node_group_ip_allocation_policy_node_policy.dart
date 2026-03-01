// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_ip_allocation_policy_node_policy_bond.dart';

class NodeGroupIpAllocationPolicyNodePolicy {
  /// Bond information See `bonds` below.
  final List<NodeGroupIpAllocationPolicyNodePolicyBond>? bonds;
  final String? nodeId;

  /// Creates a new [NodeGroupIpAllocationPolicyNodePolicy].
  /// [bonds] Bond information See `bonds` below.
  /// [nodeId] Optional.
  NodeGroupIpAllocationPolicyNodePolicy({
    this.bonds,
    this.nodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bonds': ?bonds == null ? null : pulumi.Input.encodeList<NodeGroupIpAllocationPolicyNodePolicyBond, Map<String, dynamic>>(bonds!, (value) => value.toMap()),
      'nodeId': ?nodeId,
    };
  }

  factory NodeGroupIpAllocationPolicyNodePolicy.fromMap(Map<String, dynamic> map) {
    return NodeGroupIpAllocationPolicyNodePolicy(
      bonds: map['bonds'] == null ? null : pulumi.Input.decodeList<NodeGroupIpAllocationPolicyNodePolicyBond>(map['bonds'], (value) => NodeGroupIpAllocationPolicyNodePolicyBond.fromMap((value as Map).cast<String, dynamic>())),
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
    );
  }
}

