// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_ip_allocation_policy_node_policy_bond.dart';

class NodeIpAllocationPolicyNodePolicy {
  /// Bond information See `bonds` below.
  final List<NodeIpAllocationPolicyNodePolicyBond>? bonds;
  /// Host name
  final String? hostname;
  /// Node ID
  final String? nodeId;

  /// Creates a new [NodeIpAllocationPolicyNodePolicy].
  /// [bonds] Bond information See `bonds` below.
  /// [hostname] Host name
  /// [nodeId] Node ID
  NodeIpAllocationPolicyNodePolicy({
    this.bonds,
    this.hostname,
    this.nodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bonds': ?bonds == null ? null : pulumi.Input.encodeList<NodeIpAllocationPolicyNodePolicyBond, Map<String, dynamic>>(bonds!, (value) => value.toMap()),
      'hostname': ?hostname,
      'nodeId': ?nodeId,
    };
  }

  factory NodeIpAllocationPolicyNodePolicy.fromMap(Map<String, dynamic> map) {
    return NodeIpAllocationPolicyNodePolicy(
      bonds: map['bonds'] == null ? null : pulumi.Input.decodeList<NodeIpAllocationPolicyNodePolicyBond>(map['bonds'], (value) => NodeIpAllocationPolicyNodePolicyBond.fromMap((value as Map).cast<String, dynamic>())),
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
    );
  }
}

