// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_networks_ip_allocation_policy_machine_type_policy_bond.dart';

class ClusterNetworksIpAllocationPolicyMachineTypePolicy {
  /// Bond information See `bonds` below.
  final pulumi.Input<List<ClusterNetworksIpAllocationPolicyMachineTypePolicyBond>>? bonds;
  final pulumi.Input<String>? machineType;

  /// Creates a new [ClusterNetworksIpAllocationPolicyMachineTypePolicy].
  /// [bonds] Bond information See `bonds` below.
  /// [machineType] Optional.
  ClusterNetworksIpAllocationPolicyMachineTypePolicy({
    this.bonds,
    this.machineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bonds': ?pulumi.Input.mapOptionalInputValue<List<ClusterNetworksIpAllocationPolicyMachineTypePolicyBond>, List<Map<String, dynamic>>>(bonds, (value) => pulumi.Input.encodeList<ClusterNetworksIpAllocationPolicyMachineTypePolicyBond, Map<String, dynamic>>(value, (value) => value.toMap())),
      'machineType': ?machineType,
    };
  }

  factory ClusterNetworksIpAllocationPolicyMachineTypePolicy.fromMap(Map<String, dynamic> map) {
    return ClusterNetworksIpAllocationPolicyMachineTypePolicy(
      bonds: map['bonds'] == null ? null : (pulumi.Input.decodeList<ClusterNetworksIpAllocationPolicyMachineTypePolicyBond>(map['bonds']!, (value) => ClusterNetworksIpAllocationPolicyMachineTypePolicyBond.fromMap((value as Map).cast<String, dynamic>()))).input(),
      machineType: map['machineType'] == null ? null : (map['machineType']! as String).input(),
    );
  }
}

