// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_ip_allocation_policy_node_policy_bond.dart';

class NodeIpAllocationPolicyNodePolicy {
  /// Bond information See `bonds` below.
  final pulumi.Input<List<NodeIpAllocationPolicyNodePolicyBond>>? bonds;
  /// Host name
  final pulumi.Input<String>? hostname;
  /// Node ID
  final pulumi.Input<String>? nodeId;

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
      'bonds': ?pulumi.Input.mapOptionalInputValue<List<NodeIpAllocationPolicyNodePolicyBond>, List<Map<String, dynamic>>>(bonds, (value) => pulumi.Input.encodeList<NodeIpAllocationPolicyNodePolicyBond, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': ?hostname,
      'nodeId': ?nodeId,
    };
  }

  factory NodeIpAllocationPolicyNodePolicy.fromMap(Map<String, dynamic> map) {
    return NodeIpAllocationPolicyNodePolicy(
      bonds: (() { final guardedValue = map['bonds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeIpAllocationPolicyNodePolicyBond>(guardedValue, (value) => NodeIpAllocationPolicyNodePolicyBond.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

