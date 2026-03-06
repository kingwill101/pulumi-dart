// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_ip_allocation_policy_bond_policy.dart';
import 'node_ip_allocation_policy_machine_type_policy.dart';
import 'node_ip_allocation_policy_node_policy.dart';

class NodeIpAllocationPolicy {
  /// Specify the cluster subnet ID based on the bond name See `bond_policy` below.
  final pulumi.Input<NodeIpAllocationPolicyBondPolicy>? bondPolicy;
  /// Model Assignment Policy See `machine_type_policy` below.
  final pulumi.Input<List<NodeIpAllocationPolicyMachineTypePolicy>>? machineTypePolicies;
  /// Node allocation policy See `node_policy` below.
  final pulumi.Input<List<NodeIpAllocationPolicyNodePolicy>>? nodePolicies;

  /// Creates a new [NodeIpAllocationPolicy].
  /// [bondPolicy] Specify the cluster subnet ID based on the bond name See `bond_policy` below.
  /// [machineTypePolicies] Model Assignment Policy See `machine_type_policy` below.
  /// [nodePolicies] Node allocation policy See `node_policy` below.
  const NodeIpAllocationPolicy({
    this.bondPolicy,
    this.machineTypePolicies,
    this.nodePolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bondPolicy': ?pulumi.Input.mapOptionalInputValue<NodeIpAllocationPolicyBondPolicy, Map<String, dynamic>>(bondPolicy, (value) => value.toMap()),
      'machineTypePolicies': ?pulumi.Input.mapOptionalInputValue<List<NodeIpAllocationPolicyMachineTypePolicy>, List<Map<String, dynamic>>>(machineTypePolicies, (value) => pulumi.Input.encodeList<NodeIpAllocationPolicyMachineTypePolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodePolicies': ?pulumi.Input.mapOptionalInputValue<List<NodeIpAllocationPolicyNodePolicy>, List<Map<String, dynamic>>>(nodePolicies, (value) => pulumi.Input.encodeList<NodeIpAllocationPolicyNodePolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NodeIpAllocationPolicy.fromMap(Map<String, dynamic> map) {
    return NodeIpAllocationPolicy(
      bondPolicy: (() { final guardedValue = map['bondPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeIpAllocationPolicyBondPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      machineTypePolicies: (() { final guardedValue = map['machineTypePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeIpAllocationPolicyMachineTypePolicy>(guardedValue, (value) => NodeIpAllocationPolicyMachineTypePolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodePolicies: (() { final guardedValue = map['nodePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeIpAllocationPolicyNodePolicy>(guardedValue, (value) => NodeIpAllocationPolicyNodePolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

