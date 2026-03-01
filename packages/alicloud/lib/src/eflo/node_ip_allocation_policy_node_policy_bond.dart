// ignore_for_file: unused_element, unnecessary_cast


class NodeIpAllocationPolicyNodePolicyBond {
  /// Bond Name
  final String? name;
  /// IP source cluster subnet
  final String? subnet;

  /// Creates a new [NodeIpAllocationPolicyNodePolicyBond].
  /// [name] Bond Name
  /// [subnet] IP source cluster subnet
  NodeIpAllocationPolicyNodePolicyBond({
    this.name,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'subnet': ?subnet,
    };
  }

  factory NodeIpAllocationPolicyNodePolicyBond.fromMap(Map<String, dynamic> map) {
    return NodeIpAllocationPolicyNodePolicyBond(
      name: map['name'] == null ? null : map['name'] as String,
      subnet: map['subnet'] == null ? null : map['subnet'] as String,
    );
  }
}

