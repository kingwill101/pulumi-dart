// ignore_for_file: unused_element, unnecessary_cast

/// Represents a group of VM intances that can be identified as having all these labels, for example "env=prod and app=web".
class AssignmentGroupLabelResponse {
  /// Google Compute Engine instance labels that must be present for an instance to be included in this assignment group.
  final Map<String, String> labels;

  AssignmentGroupLabelResponse({
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labels'] = labels;
    return map;
  }

  factory AssignmentGroupLabelResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentGroupLabelResponse(
      labels: (map['labels'] as Map).cast<String, String>(),
    );
  }
}
