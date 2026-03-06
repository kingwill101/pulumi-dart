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
  const ClusterNetworksIpAllocationPolicyMachineTypePolicy({
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
      bonds: (() { final guardedValue = map['bonds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNetworksIpAllocationPolicyMachineTypePolicyBond>(guardedValue, (value) => ClusterNetworksIpAllocationPolicyMachineTypePolicyBond.fromMap((value as Map).cast<String, dynamic>()))); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

