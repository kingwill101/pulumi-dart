// ignore_for_file: unused_element, unnecessary_cast

/// Represents a combination of a group with a preference set.
class ReportConfigGroupPreferenceSetAssignmentResponse {
  /// Name of the group.
  final String group;

  /// Name of the Preference Set.
  final String preferenceSet;

  /// Creates a new [ReportConfigGroupPreferenceSetAssignmentResponse].
  /// [group] Name of the group.
  /// [preferenceSet] Name of the Preference Set.
  ReportConfigGroupPreferenceSetAssignmentResponse({
    required this.group,
    required this.preferenceSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'group': group, 'preferenceSet': preferenceSet};
  }

  factory ReportConfigGroupPreferenceSetAssignmentResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReportConfigGroupPreferenceSetAssignmentResponse(
      group: map['group'] as String,
      preferenceSet: map['preferenceSet'] as String,
    );
  }
}
