// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_networks_ip_allocation_policy_bond_policy_bond.dart';

class ClusterNetworksIpAllocationPolicyBondPolicy {
  /// Default bond cluster subnet
  final pulumi.Input<String>? bondDefaultSubnet;

  /// Bond information See `bonds` below.
  final pulumi.Input<List<ClusterNetworksIpAllocationPolicyBondPolicyBond>>?
  bonds;

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
      'bonds':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterNetworksIpAllocationPolicyBondPolicyBond>,
            List<Map<String, dynamic>>
          >(
            bonds,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterNetworksIpAllocationPolicyBondPolicyBond,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ClusterNetworksIpAllocationPolicyBondPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNetworksIpAllocationPolicyBondPolicy(
      bondDefaultSubnet: (() {
        final guardedValue = map['bondDefaultSubnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bonds: (() {
        final guardedValue = map['bonds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ClusterNetworksIpAllocationPolicyBondPolicyBond
          >(
            guardedValue,
            (value) => ClusterNetworksIpAllocationPolicyBondPolicyBond.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
