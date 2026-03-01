// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_networks_ip_allocation_policy_bond_policy_bond.dart';

class ClusterNetworksIpAllocationPolicyBondPolicy {
  /// Default bond cluster subnet
  final String? bondDefaultSubnet;
  /// Bond information See `bonds` below.
  final List<ClusterNetworksIpAllocationPolicyBondPolicyBond>? bonds;

  /// Creates a new [ClusterNetworksIpAllocationPolicyBondPolicy].
  /// [bondDefaultSubnet] Default bond cluster subnet
  /// [bonds] Bond information See `bonds` below.
  ClusterNetworksIpAllocationPolicyBondPolicy({
    this.bondDefaultSubnet,
    this.bonds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bondDefaultSubnet': ?bondDefaultSubnet,
      'bonds': ?bonds == null ? null : pulumi.Input.encodeList<ClusterNetworksIpAllocationPolicyBondPolicyBond, Map<String, dynamic>>(bonds!, (value) => value.toMap()),
    };
  }

  factory ClusterNetworksIpAllocationPolicyBondPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterNetworksIpAllocationPolicyBondPolicy(
      bondDefaultSubnet: map['bondDefaultSubnet'] == null ? null : map['bondDefaultSubnet'] as String,
      bonds: map['bonds'] == null ? null : pulumi.Input.decodeList<ClusterNetworksIpAllocationPolicyBondPolicyBond>(map['bonds'], (value) => ClusterNetworksIpAllocationPolicyBondPolicyBond.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

