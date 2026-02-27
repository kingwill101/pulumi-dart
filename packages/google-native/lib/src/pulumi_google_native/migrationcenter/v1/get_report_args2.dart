// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getReport.
class GetReportArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> reportConfigId;
  final Input<String> reportId;
  final Input<String>? view;

  GetReportArgs2({
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

  factory GetReportArgs2.fromMap(Map<String, dynamic> map) {
    return GetReportArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      reportConfigId: Input.asInput<String>(map['reportConfigId']),
      reportId: Input.asInput<String>(map['reportId']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
