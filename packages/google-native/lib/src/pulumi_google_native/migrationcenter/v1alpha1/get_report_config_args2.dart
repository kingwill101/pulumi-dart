// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getReportConfig.
class GetReportConfigArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> reportConfigId;

  GetReportConfigArgs2({
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

  factory GetReportConfigArgs2.fromMap(Map<String, dynamic> map) {
    return GetReportConfigArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      reportConfigId: Input.asInput<String>(map['reportConfigId']),
    );
  }
}
