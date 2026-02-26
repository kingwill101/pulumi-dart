// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUtilizationReport.
class GetUtilizationReportArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> sourceId;
  final Input<String> utilizationReportId;
  final Input<String>? view;

  GetUtilizationReportArgs2({
    required this.location,
    this.project,
    required this.sourceId,
    required this.utilizationReportId,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sourceId'] = sourceId;
    map['utilizationReportId'] = utilizationReportId;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetUtilizationReportArgs2.fromMap(Map<String, dynamic> map) {
    return GetUtilizationReportArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      sourceId: Input.asInput<String>(map['sourceId']),
      utilizationReportId: Input.asInput<String>(map['utilizationReportId']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
