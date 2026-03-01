// ignore_for_file: unused_element, unnecessary_cast


class OsPolicyAssignmentInstanceFilterExclusionLabel {
  /// Labels are identified by key/value pairs in this map.
  /// A VM should contain all the key/value pairs specified in this map to be
  /// selected.
  final Map<String, String>? labels;

  /// Creates a new [OsPolicyAssignmentInstanceFilterExclusionLabel].
  /// [labels] Labels are identified by key/value pairs in this map.
  OsPolicyAssignmentInstanceFilterExclusionLabel({
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
    };
  }

  factory OsPolicyAssignmentInstanceFilterExclusionLabel.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentInstanceFilterExclusionLabel(
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
    );
  }
}

