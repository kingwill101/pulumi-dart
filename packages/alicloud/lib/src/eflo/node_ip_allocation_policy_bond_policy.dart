// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_ip_allocation_policy_bond_policy_bond.dart';

class NodeIpAllocationPolicyBondPolicy {
  /// Default bond cluster subnet
  final String? bondDefaultSubnet;
  /// Bond information See `bonds` below.
  final List<NodeIpAllocationPolicyBondPolicyBond>? bonds;

  /// Creates a new [NodeIpAllocationPolicyBondPolicy].
  /// [bondDefaultSubnet] Default bond cluster subnet
  /// [bonds] Bond information See `bonds` below.
  NodeIpAllocationPolicyBondPolicy({
    this.bondDefaultSubnet,
    this.bonds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bondDefaultSubnet': ?bondDefaultSubnet,
      'bonds': ?bonds == null ? null : pulumi.Input.encodeList<NodeIpAllocationPolicyBondPolicyBond, Map<String, dynamic>>(bonds!, (value) => value.toMap()),
    };
  }

  factory NodeIpAllocationPolicyBondPolicy.fromMap(Map<String, dynamic> map) {
    return NodeIpAllocationPolicyBondPolicy(
      bondDefaultSubnet: map['bondDefaultSubnet'] == null ? null : map['bondDefaultSubnet'] as String,
      bonds: map['bonds'] == null ? null : pulumi.Input.decodeList<NodeIpAllocationPolicyBondPolicyBond>(map['bonds'], (value) => NodeIpAllocationPolicyBondPolicyBond.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

