// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_ip_allocation_policy_bond_policy.dart';
import 'node_group_ip_allocation_policy_machine_type_policy.dart';
import 'node_group_ip_allocation_policy_node_policy.dart';

class NodeGroupIpAllocationPolicy {
  /// Specify the cluster subnet ID based on the bond name See `bond_policy` below.
  final pulumi.Input<NodeGroupIpAllocationPolicyBondPolicy>? bondPolicy;
  /// Model Assignment Policy See `machine_type_policy` below.
  final pulumi.Input<List<NodeGroupIpAllocationPolicyMachineTypePolicy>>? machineTypePolicies;
  /// Node allocation policy See `node_policy` below.
  final pulumi.Input<List<NodeGroupIpAllocationPolicyNodePolicy>>? nodePolicies;

  /// Creates a new [NodeGroupIpAllocationPolicy].
  /// [bondPolicy] Specify the cluster subnet ID based on the bond name See `bond_policy` below.
  /// [machineTypePolicies] Model Assignment Policy See `machine_type_policy` below.
  /// [nodePolicies] Node allocation policy See `node_policy` below.
  NodeGroupIpAllocationPolicy({
    this.bondPolicy,
    this.machineTypePolicies,
    this.nodePolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bondPolicy': ?pulumi.Input.mapOptionalInputValue<NodeGroupIpAllocationPolicyBondPolicy, Map<String, dynamic>>(bondPolicy, (value) => value.toMap()),
      'machineTypePolicies': ?pulumi.Input.mapOptionalInputValue<List<NodeGroupIpAllocationPolicyMachineTypePolicy>, List<Map<String, dynamic>>>(machineTypePolicies, (value) => pulumi.Input.encodeList<NodeGroupIpAllocationPolicyMachineTypePolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodePolicies': ?pulumi.Input.mapOptionalInputValue<List<NodeGroupIpAllocationPolicyNodePolicy>, List<Map<String, dynamic>>>(nodePolicies, (value) => pulumi.Input.encodeList<NodeGroupIpAllocationPolicyNodePolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NodeGroupIpAllocationPolicy.fromMap(Map<String, dynamic> map) {
    return NodeGroupIpAllocationPolicy(
      bondPolicy: map['bondPolicy'] == null ? null : (NodeGroupIpAllocationPolicyBondPolicy.fromMap((map['bondPolicy'] as Map).cast<String, dynamic>())).input(),
      machineTypePolicies: map['machineTypePolicies'] == null ? null : (pulumi.Input.decodeList<NodeGroupIpAllocationPolicyMachineTypePolicy>(map['machineTypePolicies'], (value) => NodeGroupIpAllocationPolicyMachineTypePolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nodePolicies: map['nodePolicies'] == null ? null : (pulumi.Input.decodeList<NodeGroupIpAllocationPolicyNodePolicy>(map['nodePolicies'], (value) => NodeGroupIpAllocationPolicyNodePolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

