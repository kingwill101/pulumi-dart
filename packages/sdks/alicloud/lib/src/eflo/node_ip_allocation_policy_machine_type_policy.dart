// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_ip_allocation_policy_machine_type_policy_bond.dart';

class NodeIpAllocationPolicyMachineTypePolicy {
  /// Bond information See `bonds` below.
  final pulumi.Input<List<NodeIpAllocationPolicyMachineTypePolicyBond>>? bonds;
  /// Model
  final pulumi.Input<String>? machineType;

  /// Creates a new [NodeIpAllocationPolicyMachineTypePolicy].
  /// [bonds] Bond information See `bonds` below.
  /// [machineType] Model
  const NodeIpAllocationPolicyMachineTypePolicy({
    this.bonds,
    this.machineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bonds': ?pulumi.Input.mapOptionalInputValue<List<NodeIpAllocationPolicyMachineTypePolicyBond>, List<Map<String, dynamic>>>(bonds, (value) => pulumi.Input.encodeList<NodeIpAllocationPolicyMachineTypePolicyBond, Map<String, dynamic>>(value, (value) => value.toMap())),
      'machineType': ?machineType,
    };
  }

  factory NodeIpAllocationPolicyMachineTypePolicy.fromMap(Map<String, dynamic> map) {
    return NodeIpAllocationPolicyMachineTypePolicy(
      bonds: (() { final guardedValue = map['bonds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeIpAllocationPolicyMachineTypePolicyBond>(guardedValue, (value) => NodeIpAllocationPolicyMachineTypePolicyBond.fromMap((value as Map).cast<String, dynamic>()))); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

