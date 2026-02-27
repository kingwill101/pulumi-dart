// ignore_for_file: unused_element, unnecessary_cast

import 'report_summary_response_migrationcenter_v1alpha1.dart';

/// Result data returned by getReport.
class GetReportMigrationcenterV1alpha1Result {
  /// Creation timestamp.
  final String createTime;

  /// Free-text description.
  final String description;

  /// User-friendly display name. Maximum length is 63 characters.
  final String displayName;

  /// Name of resource.
  final String name;

  /// Report creation state.
  final String state;

  /// Summary view of the Report.
  final ReportSummaryResponseMigrationcenterV1alpha1 summary;

  /// Report type.
  final String type;

  /// Last update timestamp.
  final String updateTime;

  GetReportMigrationcenterV1alpha1Result({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.name,
    required this.state,
    required this.summary,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['name'] = name;
    map['state'] = state;
    map['summary'] = summary.toMap();
    map['type'] = type;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetReportMigrationcenterV1alpha1Result.fromMap(
      Map<String, dynamic> map) {
    return GetReportMigrationcenterV1alpha1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      summary: ReportSummaryResponseMigrationcenterV1alpha1.fromMap(
          (map['summary'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
