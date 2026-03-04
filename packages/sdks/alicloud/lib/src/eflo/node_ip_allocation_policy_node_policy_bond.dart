// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeIpAllocationPolicyNodePolicyBond {
  /// Bond Name
  final pulumi.Input<String>? name;

  /// IP source cluster subnet
  final pulumi.Input<String>? subnet;

  /// Creates a new [NodeIpAllocationPolicyNodePolicyBond].
  /// [name] Bond Name
  /// [subnet] IP source cluster subnet
  NodeIpAllocationPolicyNodePolicyBond({this.name, this.subnet});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'subnet': ?subnet};
  }

  factory NodeIpAllocationPolicyNodePolicyBond.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodeIpAllocationPolicyNodePolicyBond(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnet: (() {
        final guardedValue = map['subnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
