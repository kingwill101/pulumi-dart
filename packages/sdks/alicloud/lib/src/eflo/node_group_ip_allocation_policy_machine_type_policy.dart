// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_ip_allocation_policy_machine_type_policy_bond.dart';

class NodeGroupIpAllocationPolicyMachineTypePolicy {
  /// Bond information See `bonds` below.
  final List<NodeGroupIpAllocationPolicyMachineTypePolicyBond>? bonds;
  /// Machine type
  final String? machineType;

  /// Creates a new [NodeGroupIpAllocationPolicyMachineTypePolicy].
  /// [bonds] Bond information See `bonds` below.
  /// [machineType] Machine type
  NodeGroupIpAllocationPolicyMachineTypePolicy({
    this.bonds,
    this.machineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bonds': ?bonds == null ? null : pulumi.Input.encodeList<NodeGroupIpAllocationPolicyMachineTypePolicyBond, Map<String, dynamic>>(bonds!, (value) => value.toMap()),
      'machineType': ?machineType,
    };
  }

  factory NodeGroupIpAllocationPolicyMachineTypePolicy.fromMap(Map<String, dynamic> map) {
    return NodeGroupIpAllocationPolicyMachineTypePolicy(
      bonds: map['bonds'] == null ? null : pulumi.Input.decodeList<NodeGroupIpAllocationPolicyMachineTypePolicyBond>(map['bonds'], (value) => NodeGroupIpAllocationPolicyMachineTypePolicyBond.fromMap((value as Map).cast<String, dynamic>())),
      machineType: map['machineType'] == null ? null : map['machineType'] as String,
    );
  }
}

