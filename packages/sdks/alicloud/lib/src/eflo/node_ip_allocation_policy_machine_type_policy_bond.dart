// ignore_for_file: unused_element, unnecessary_cast


class NodeIpAllocationPolicyMachineTypePolicyBond {
  /// Bond Name
  final String? name;
  /// IP source cluster subnet
  final String? subnet;

  /// Creates a new [NodeIpAllocationPolicyMachineTypePolicyBond].
  /// [name] Bond Name
  /// [subnet] IP source cluster subnet
  NodeIpAllocationPolicyMachineTypePolicyBond({
    this.name,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'subnet': ?subnet,
    };
  }

  factory NodeIpAllocationPolicyMachineTypePolicyBond.fromMap(Map<String, dynamic> map) {
    return NodeIpAllocationPolicyMachineTypePolicyBond(
      name: map['name'] == null ? null : map['name'] as String,
      subnet: map['subnet'] == null ? null : map['subnet'] as String,
    );
  }
}

