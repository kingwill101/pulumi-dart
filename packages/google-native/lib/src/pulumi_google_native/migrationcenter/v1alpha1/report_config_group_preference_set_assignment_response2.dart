// ignore_for_file: unused_element, unnecessary_cast

/// Represents a combination of a group with a preference set.
class ReportConfigGroupPreferenceSetAssignmentResponse2 {
  /// Name of the group.
  final String group;

  /// Name of the Preference Set.
  final String preferenceSet;

  ReportConfigGroupPreferenceSetAssignmentResponse2({
    required this.group,
    required this.preferenceSet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['group'] = group;
    map['preferenceSet'] = preferenceSet;
    return map;
  }

  factory ReportConfigGroupPreferenceSetAssignmentResponse2.fromMap(
      Map<String, dynamic> map) {
    return ReportConfigGroupPreferenceSetAssignmentResponse2(
      group: map['group'] as String,
      preferenceSet: map['preferenceSet'] as String,
    );
  }
}
