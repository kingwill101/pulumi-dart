// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_networks_ip_allocation_policy_machine_type_policy_bond.dart';

class ClusterNetworksIpAllocationPolicyMachineTypePolicy {
  /// Bond information See `bonds` below.
  final List<ClusterNetworksIpAllocationPolicyMachineTypePolicyBond>? bonds;
  final String? machineType;

  /// Creates a new [ClusterNetworksIpAllocationPolicyMachineTypePolicy].
  /// [bonds] Bond information See `bonds` below.
  /// [machineType] Optional.
  ClusterNetworksIpAllocationPolicyMachineTypePolicy({
    this.bonds,
    this.machineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bonds': ?bonds == null ? null : pulumi.Input.encodeList<ClusterNetworksIpAllocationPolicyMachineTypePolicyBond, Map<String, dynamic>>(bonds!, (value) => value.toMap()),
      'machineType': ?machineType,
    };
  }

  factory ClusterNetworksIpAllocationPolicyMachineTypePolicy.fromMap(Map<String, dynamic> map) {
    return ClusterNetworksIpAllocationPolicyMachineTypePolicy(
      bonds: map['bonds'] == null ? null : pulumi.Input.decodeList<ClusterNetworksIpAllocationPolicyMachineTypePolicyBond>(map['bonds'], (value) => ClusterNetworksIpAllocationPolicyMachineTypePolicyBond.fromMap((value as Map).cast<String, dynamic>())),
      machineType: map['machineType'] == null ? null : map['machineType'] as String,
    );
  }
}

