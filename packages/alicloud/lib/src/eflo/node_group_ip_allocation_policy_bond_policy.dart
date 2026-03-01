// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_ip_allocation_policy_bond_policy_bond.dart';

class NodeGroupIpAllocationPolicyBondPolicy {
  /// Default bond cluster subnet
  final String? bondDefaultSubnet;
  /// Bond information See `bonds` below.
  final List<NodeGroupIpAllocationPolicyBondPolicyBond>? bonds;

  /// Creates a new [NodeGroupIpAllocationPolicyBondPolicy].
  /// [bondDefaultSubnet] Default bond cluster subnet
  /// [bonds] Bond information See `bonds` below.
  NodeGroupIpAllocationPolicyBondPolicy({
    this.bondDefaultSubnet,
    this.bonds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bondDefaultSubnet': ?bondDefaultSubnet,
      'bonds': ?bonds == null ? null : pulumi.Input.encodeList<NodeGroupIpAllocationPolicyBondPolicyBond, Map<String, dynamic>>(bonds!, (value) => value.toMap()),
    };
  }

  factory NodeGroupIpAllocationPolicyBondPolicy.fromMap(Map<String, dynamic> map) {
    return NodeGroupIpAllocationPolicyBondPolicy(
      bondDefaultSubnet: map['bondDefaultSubnet'] == null ? null : map['bondDefaultSubnet'] as String,
      bonds: map['bonds'] == null ? null : pulumi.Input.decodeList<NodeGroupIpAllocationPolicyBondPolicyBond>(map['bonds'], (value) => NodeGroupIpAllocationPolicyBondPolicyBond.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

