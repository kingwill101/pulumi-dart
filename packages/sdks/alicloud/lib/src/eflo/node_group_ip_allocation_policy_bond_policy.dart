// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_ip_allocation_policy_bond_policy_bond.dart';

class NodeGroupIpAllocationPolicyBondPolicy {
  /// Default bond cluster subnet
  final pulumi.Input<String>? bondDefaultSubnet;

  /// Bond information See `bonds` below.
  final pulumi.Input<List<NodeGroupIpAllocationPolicyBondPolicyBond>>? bonds;

  /// Creates a new [NodeGroupIpAllocationPolicyBondPolicy].
  /// [bondDefaultSubnet] Default bond cluster subnet
  /// [bonds] Bond information See `bonds` below.
  NodeGroupIpAllocationPolicyBondPolicy({this.bondDefaultSubnet, this.bonds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bondDefaultSubnet': ?bondDefaultSubnet,
      'bonds':
          ?pulumi.Input.mapOptionalInputValue<
            List<NodeGroupIpAllocationPolicyBondPolicyBond>,
            List<Map<String, dynamic>>
          >(
            bonds,
            (value) =>
                pulumi.Input.encodeList<
                  NodeGroupIpAllocationPolicyBondPolicyBond,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory NodeGroupIpAllocationPolicyBondPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodeGroupIpAllocationPolicyBondPolicy(
      bondDefaultSubnet: (() {
        final guardedValue = map['bondDefaultSubnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bonds: (() {
        final guardedValue = map['bonds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NodeGroupIpAllocationPolicyBondPolicyBond>(
            guardedValue,
            (value) => NodeGroupIpAllocationPolicyBondPolicyBond.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
