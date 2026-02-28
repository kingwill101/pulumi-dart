// ignore_for_file: unused_element, unnecessary_cast


class PolicyBasedRouteVirtualMachine {
  /// A list of VM instance tags that this policy-based route applies to. VM instances that have ANY of tags specified here will install this PBR.
  final List<String> tags;

  /// Creates a new [PolicyBasedRouteVirtualMachine].
  /// [tags] A list of VM instance tags that this policy-based route applies to. VM instances that have ANY of tags specified here will install this PBR.
  PolicyBasedRouteVirtualMachine({
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': tags,
    };
  }

  factory PolicyBasedRouteVirtualMachine.fromMap(Map<String, dynamic> map) {
    return PolicyBasedRouteVirtualMachine(
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}

