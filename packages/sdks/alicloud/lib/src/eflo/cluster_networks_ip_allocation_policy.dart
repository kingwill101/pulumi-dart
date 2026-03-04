// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_networks_ip_allocation_policy_bond_policy.dart';
import 'cluster_networks_ip_allocation_policy_machine_type_policy.dart';
import 'cluster_networks_ip_allocation_policy_node_policy.dart';

class ClusterNetworksIpAllocationPolicy {
  /// Bond policy See `bond_policy` below.
  final pulumi.Input<ClusterNetworksIpAllocationPolicyBondPolicy>? bondPolicy;

  /// Model Assignment Policy See `machine_type_policy` below.
  final pulumi.Input<List<ClusterNetworksIpAllocationPolicyMachineTypePolicy>>?
  machineTypePolicies;

  /// Node allocation policy See `node_policy` below.
  final pulumi.Input<List<ClusterNetworksIpAllocationPolicyNodePolicy>>?
  nodePolicies;

  /// Creates a new [ClusterNetworksIpAllocationPolicy].
  /// [bondPolicy] Bond policy See `bond_policy` below.
  /// [machineTypePolicies] Model Assignment Policy See `machine_type_policy` below.
  /// [nodePolicies] Node allocation policy See `node_policy` below.
  ClusterNetworksIpAllocationPolicy({
    this.bondPolicy,
    this.machineTypePolicies,
    this.nodePolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bondPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterNetworksIpAllocationPolicyBondPolicy,
            Map<String, dynamic>
          >(bondPolicy, (value) => value.toMap()),
      'machineTypePolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterNetworksIpAllocationPolicyMachineTypePolicy>,
            List<Map<String, dynamic>>
          >(
            machineTypePolicies,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterNetworksIpAllocationPolicyMachineTypePolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'nodePolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterNetworksIpAllocationPolicyNodePolicy>,
            List<Map<String, dynamic>>
          >(
            nodePolicies,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterNetworksIpAllocationPolicyNodePolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ClusterNetworksIpAllocationPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterNetworksIpAllocationPolicy(
      bondPolicy: (() {
        final guardedValue = map['bondPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterNetworksIpAllocationPolicyBondPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      machineTypePolicies: (() {
        final guardedValue = map['machineTypePolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ClusterNetworksIpAllocationPolicyMachineTypePolicy
          >(
            guardedValue,
            (value) =>
                ClusterNetworksIpAllocationPolicyMachineTypePolicy.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      nodePolicies: (() {
        final guardedValue = map['nodePolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClusterNetworksIpAllocationPolicyNodePolicy>(
            guardedValue,
            (value) => ClusterNetworksIpAllocationPolicyNodePolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
