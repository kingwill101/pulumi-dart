// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'report_config_group_preference_set_assignment_response2.dart';

/// Result data returned by getReportConfig.
class GetReportConfigResult2 {
  /// The timestamp when the resource was created.
  final String createTime;

  /// Free-text description.
  final String description;

  /// User-friendly display name. Maximum length is 63 characters.
  final String displayName;

  /// Collection of combinations of groups and preference sets.
  final List<ReportConfigGroupPreferenceSetAssignmentResponse2>
      groupPreferencesetAssignments;

  /// Name of resource.
  final String name;

  /// The timestamp when the resource was last updated.
  final String updateTime;

  GetReportConfigResult2({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.groupPreferencesetAssignments,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['groupPreferencesetAssignments'] = Input.encodeList<
            ReportConfigGroupPreferenceSetAssignmentResponse2,
            Map<String, dynamic>>(
        groupPreferencesetAssignments, (value) => value.toMap());
    map['name'] = name;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetReportConfigResult2.fromMap(Map<String, dynamic> map) {
    return GetReportConfigResult2(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      groupPreferencesetAssignments:
          Input.decodeList<ReportConfigGroupPreferenceSetAssignmentResponse2>(
              map['groupPreferencesetAssignments'],
              (value) =>
                  ReportConfigGroupPreferenceSetAssignmentResponse2.fromMap(
                      (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
