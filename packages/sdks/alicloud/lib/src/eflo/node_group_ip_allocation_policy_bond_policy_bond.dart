// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeGroupIpAllocationPolicyBondPolicyBond {
  /// The bond name
  final pulumi.Input<String>? name;
  /// IP source cluster subnet
  final pulumi.Input<String>? subnet;

  /// Creates a new [NodeGroupIpAllocationPolicyBondPolicyBond].
  /// [name] The bond name
  /// [subnet] IP source cluster subnet
  NodeGroupIpAllocationPolicyBondPolicyBond({
    this.name,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'subnet': ?subnet,
    };
  }

  factory NodeGroupIpAllocationPolicyBondPolicyBond.fromMap(Map<String, dynamic> map) {
    return NodeGroupIpAllocationPolicyBondPolicyBond(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      subnet: map['subnet'] == null ? null : (map['subnet'] as String).input(),
    );
  }
}

