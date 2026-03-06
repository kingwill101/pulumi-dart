// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_ip_allocation_policy_bond_policy_bond.dart';

class NodeIpAllocationPolicyBondPolicy {
  /// Default bond cluster subnet
  final pulumi.Input<String>? bondDefaultSubnet;
  /// Bond information See `bonds` below.
  final pulumi.Input<List<NodeIpAllocationPolicyBondPolicyBond>>? bonds;

  /// Creates a new [NodeIpAllocationPolicyBondPolicy].
  /// [bondDefaultSubnet] Default bond cluster subnet
  /// [bonds] Bond information See `bonds` below.
  const NodeIpAllocationPolicyBondPolicy({
    this.bondDefaultSubnet,
    this.bonds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bondDefaultSubnet': ?bondDefaultSubnet,
      'bonds': ?pulumi.Input.mapOptionalInputValue<List<NodeIpAllocationPolicyBondPolicyBond>, List<Map<String, dynamic>>>(bonds, (value) => pulumi.Input.encodeList<NodeIpAllocationPolicyBondPolicyBond, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NodeIpAllocationPolicyBondPolicy.fromMap(Map<String, dynamic> map) {
    return NodeIpAllocationPolicyBondPolicy(
      bondDefaultSubnet: (() { final guardedValue = map['bondDefaultSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bonds: (() { final guardedValue = map['bonds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeIpAllocationPolicyBondPolicyBond>(guardedValue, (value) => NodeIpAllocationPolicyBondPolicyBond.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

