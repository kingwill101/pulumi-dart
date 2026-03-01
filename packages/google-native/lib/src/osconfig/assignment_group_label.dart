// ignore_for_file: unused_element, unnecessary_cast

/// Represents a group of VM intances that can be identified as having all these labels, for example "env=prod and app=web".
class AssignmentGroupLabel {
  /// Google Compute Engine instance labels that must be present for an instance to be included in this assignment group.
  final Map<String, String>? labels;

  /// Creates a new [AssignmentGroupLabel].
  /// [labels] Google Compute Engine instance labels that must be present for an instance to be included in this assignment group.
  AssignmentGroupLabel({this.labels});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'labels': ?labels};
  }

  factory AssignmentGroupLabel.fromMap(Map<String, dynamic> map) {
    return AssignmentGroupLabel(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}
