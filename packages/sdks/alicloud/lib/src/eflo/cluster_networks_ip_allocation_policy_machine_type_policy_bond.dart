// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNetworksIpAllocationPolicyMachineTypePolicyBond {
  /// The bond name
  final pulumi.Input<String>? name;
  /// IP source cluster subnet
  final pulumi.Input<String>? subnet;

  /// Creates a new [ClusterNetworksIpAllocationPolicyMachineTypePolicyBond].
  /// [name] The bond name
  /// [subnet] IP source cluster subnet
  ClusterNetworksIpAllocationPolicyMachineTypePolicyBond({
    this.name,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'subnet': ?subnet,
    };
  }

  factory ClusterNetworksIpAllocationPolicyMachineTypePolicyBond.fromMap(Map<String, dynamic> map) {
    return ClusterNetworksIpAllocationPolicyMachineTypePolicyBond(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      subnet: map['subnet'] == null ? null : (map['subnet']! as String).input(),
    );
  }
}

