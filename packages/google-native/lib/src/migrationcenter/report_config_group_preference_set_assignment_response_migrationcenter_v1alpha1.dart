// ignore_for_file: unused_element, unnecessary_cast


/// Represents a combination of a group with a preference set.
class ReportConfigGroupPreferenceSetAssignmentResponseMigrationcenterV1alpha1 {
  /// Name of the group.
  final String group;
  /// Name of the Preference Set.
  final String preferenceSet;

  /// Creates a new [ReportConfigGroupPreferenceSetAssignmentResponseMigrationcenterV1alpha1].
  /// [group] Name of the group.
  /// [preferenceSet] Name of the Preference Set.
  ReportConfigGroupPreferenceSetAssignmentResponseMigrationcenterV1alpha1({
    required this.group,
    required this.preferenceSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
      'preferenceSet': preferenceSet,
    };
  }

  factory ReportConfigGroupPreferenceSetAssignmentResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ReportConfigGroupPreferenceSetAssignmentResponseMigrationcenterV1alpha1(
      group: map['group'] as String,
      preferenceSet: map['preferenceSet'] as String,
    );
  }
}

