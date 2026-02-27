// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReport.
class GetReportMigrationcenterV1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reportConfigId;
  final pulumi.Input<String> reportId;
  final pulumi.Input<String>? view;

  GetReportMigrationcenterV1Args({
    required this.location,
    this.project,
    required this.reportConfigId,
    required this.reportId,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['reportConfigId'] = reportConfigId;
    map['reportId'] = reportId;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetReportMigrationcenterV1Args.fromMap(Map<String, dynamic> map) {
    return GetReportMigrationcenterV1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reportConfigId: pulumi.Input.asInput<String>(map['reportConfigId']),
      reportId: pulumi.Input.asInput<String>(map['reportId']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
