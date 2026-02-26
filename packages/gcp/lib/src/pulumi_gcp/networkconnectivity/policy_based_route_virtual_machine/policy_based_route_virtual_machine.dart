// ignore_for_file: unused_element, unnecessary_cast

class PolicyBasedRouteVirtualMachine {
  /// A list of VM instance tags that this policy-based route applies to. VM instances that have ANY of tags specified here will install this PBR.
  final List<String> tags;

  PolicyBasedRouteVirtualMachine({
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tags'] = tags;
    return map;
  }

  factory PolicyBasedRouteVirtualMachine.fromMap(Map<String, dynamic> map) {
    return PolicyBasedRouteVirtualMachine(
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}
