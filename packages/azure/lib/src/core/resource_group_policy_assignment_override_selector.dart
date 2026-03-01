// ignore_for_file: unused_element, unnecessary_cast


class ResourceGroupPolicyAssignmentOverrideSelector {
  final List<String>? ins;
  final String? kind;
  final List<String>? notIns;

  /// Creates a new [ResourceGroupPolicyAssignmentOverrideSelector].
  /// [ins] Optional.
  /// [kind] Optional.
  /// [notIns] Optional.
  ResourceGroupPolicyAssignmentOverrideSelector({
    this.ins,
    this.kind,
    this.notIns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ins': ?ins,
      'kind': ?kind,
      'notIns': ?notIns,
    };
  }

  factory ResourceGroupPolicyAssignmentOverrideSelector.fromMap(Map<String, dynamic> map) {
    return ResourceGroupPolicyAssignmentOverrideSelector(
      ins: map['ins'] == null ? null : (map['ins'] as List).cast<String>(),
      kind: map['kind'] == null ? null : map['kind'] as String,
      notIns: map['notIns'] == null ? null : (map['notIns'] as List).cast<String>(),
    );
  }
}

