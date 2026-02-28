// ignore_for_file: unused_element, unnecessary_cast

/// VM instances to which this policy-based route applies to.
class VirtualMachine {
  /// Optional. A list of VM instance tags the this policy-based route applies to. VM instances that have ANY of tags specified here will install this PBR.
  final List<String>? tags;

  /// Creates a new [VirtualMachine].
  /// [tags] Optional. A list of VM instance tags the this policy-based route applies to. VM instances that have ANY of tags specified here will install this PBR.
  VirtualMachine({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory VirtualMachine.fromMap(Map<String, dynamic> map) {
    return VirtualMachine(
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
