// ignore_for_file: unused_element, unnecessary_cast

class GuestPoliciesAssignmentGroupLabel {
  /// Google Compute Engine instance labels that must be present for an instance to be included in this assignment group.
  final Map<String, String> labels;

  GuestPoliciesAssignmentGroupLabel({
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labels'] = labels;
    return map;
  }

  factory GuestPoliciesAssignmentGroupLabel.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesAssignmentGroupLabel(
      labels: (map['labels'] as Map).cast<String, String>(),
    );
  }
}
