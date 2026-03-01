// ignore_for_file: unused_element, unnecessary_cast

/// Contains criteria for selecting Targets. Attributes provided must match the target resource in order for policy restrictions to apply. E.g. if id "prod" and labels "foo: bar" are given the target resource must match both that id and have that label in order to be selected.
class TargetAttributeResponse {
  /// Target labels.
  final Map<String, String> labels;

  /// Creates a new [TargetAttributeResponse].
  /// [labels] Target labels.
  TargetAttributeResponse({required this.labels});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'labels': labels};
  }

  factory TargetAttributeResponse.fromMap(Map<String, dynamic> map) {
    return TargetAttributeResponse(
      labels: (map['labels'] as Map).cast<String, String>(),
    );
  }
}
