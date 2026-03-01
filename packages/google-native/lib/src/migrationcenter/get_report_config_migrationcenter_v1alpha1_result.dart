// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_config_group_preference_set_assignment_response_migrationcenter_v1alpha1.dart';

/// Result data returned by getReportConfig.
class GetReportConfigMigrationcenterV1alpha1Result {
  /// The timestamp when the resource was created.
  final String createTime;

  /// Free-text description.
  final String description;

  /// User-friendly display name. Maximum length is 63 characters.
  final String displayName;

  /// Collection of combinations of groups and preference sets.
  final List<
    ReportConfigGroupPreferenceSetAssignmentResponseMigrationcenterV1alpha1
  >
  groupPreferencesetAssignments;

  /// Name of resource.
  final String name;

  /// The timestamp when the resource was last updated.
  final String updateTime;

  /// Creates a new [GetReportConfigMigrationcenterV1alpha1Result].
  /// [createTime] The timestamp when the resource was created.
  /// [description] Free-text description.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [groupPreferencesetAssignments] Collection of combinations of groups and preference sets.
  /// [name] Name of resource.
  /// [updateTime] The timestamp when the resource was last updated.
  GetReportConfigMigrationcenterV1alpha1Result({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.groupPreferencesetAssignments,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'groupPreferencesetAssignments':
          pulumi.Input.encodeList<
            ReportConfigGroupPreferenceSetAssignmentResponseMigrationcenterV1alpha1,
            Map<String, dynamic>
          >(groupPreferencesetAssignments, (value) => value.toMap()),
      'name': name,
      'updateTime': updateTime,
    };
  }

  factory GetReportConfigMigrationcenterV1alpha1Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetReportConfigMigrationcenterV1alpha1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      groupPreferencesetAssignments:
          pulumi.Input.decodeList<
            ReportConfigGroupPreferenceSetAssignmentResponseMigrationcenterV1alpha1
          >(
            map['groupPreferencesetAssignments'],
            (value) =>
                ReportConfigGroupPreferenceSetAssignmentResponseMigrationcenterV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
