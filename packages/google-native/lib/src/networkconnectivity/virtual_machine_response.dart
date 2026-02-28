// ignore_for_file: unused_element, unnecessary_cast

/// VM instances to which this policy-based route applies to.
class VirtualMachineResponse {
  /// Optional. A list of VM instance tags the this policy-based route applies to. VM instances that have ANY of tags specified here will install this PBR.
  final List<String> tags;

  /// Creates a new [VirtualMachineResponse].
  /// [tags] Optional. A list of VM instance tags the this policy-based route applies to. VM instances that have ANY of tags specified here will install this PBR.
  VirtualMachineResponse({
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tags'] = tags;
    return map;
  }

  factory VirtualMachineResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineResponse(
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}
