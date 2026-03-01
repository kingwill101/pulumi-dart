// ignore_for_file: unused_element, unnecessary_cast


class SubscriptionPolicyAssignmentOverrideSelector {
  final List<String>? ins;
  final String? kind;
  final List<String>? notIns;

  /// Creates a new [SubscriptionPolicyAssignmentOverrideSelector].
  /// [ins] Optional.
  /// [kind] Optional.
  /// [notIns] Optional.
  SubscriptionPolicyAssignmentOverrideSelector({
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

  factory SubscriptionPolicyAssignmentOverrideSelector.fromMap(Map<String, dynamic> map) {
    return SubscriptionPolicyAssignmentOverrideSelector(
      ins: map['ins'] == null ? null : (map['ins'] as List).cast<String>(),
      kind: map['kind'] == null ? null : map['kind'] as String,
      notIns: map['notIns'] == null ? null : (map['notIns'] as List).cast<String>(),
    );
  }
}

