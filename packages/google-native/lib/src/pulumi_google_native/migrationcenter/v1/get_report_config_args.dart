// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getReportConfig.
class GetReportConfigArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> reportConfigId;

  GetReportConfigArgs({
    required this.location,
    this.project,
    required this.reportConfigId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['reportConfigId'] = reportConfigId;
    return map;
  }

  factory GetReportConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetReportConfigArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      reportConfigId: Input.asInput<String>(map['reportConfigId']),
    );
  }
}
