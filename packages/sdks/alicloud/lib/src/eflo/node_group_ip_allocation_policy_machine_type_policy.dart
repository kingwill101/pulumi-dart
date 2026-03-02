// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_ip_allocation_policy_machine_type_policy_bond.dart';

class NodeGroupIpAllocationPolicyMachineTypePolicy {
  /// Bond information See `bonds` below.
  final pulumi.Input<List<NodeGroupIpAllocationPolicyMachineTypePolicyBond>>? bonds;
  /// Machine type
  final pulumi.Input<String>? machineType;

  /// Creates a new [NodeGroupIpAllocationPolicyMachineTypePolicy].
  /// [bonds] Bond information See `bonds` below.
  /// [machineType] Machine type
  NodeGroupIpAllocationPolicyMachineTypePolicy({
    this.bonds,
    this.machineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bonds': ?pulumi.Input.mapOptionalInputValue<List<NodeGroupIpAllocationPolicyMachineTypePolicyBond>, List<Map<String, dynamic>>>(bonds, (value) => pulumi.Input.encodeList<NodeGroupIpAllocationPolicyMachineTypePolicyBond, Map<String, dynamic>>(value, (value) => value.toMap())),
      'machineType': ?machineType,
    };
  }

  factory NodeGroupIpAllocationPolicyMachineTypePolicy.fromMap(Map<String, dynamic> map) {
    return NodeGroupIpAllocationPolicyMachineTypePolicy(
      bonds: map['bonds'] == null ? null : (pulumi.Input.decodeList<NodeGroupIpAllocationPolicyMachineTypePolicyBond>(map['bonds'], (value) => NodeGroupIpAllocationPolicyMachineTypePolicyBond.fromMap((value as Map).cast<String, dynamic>()))).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
    );
  }
}

