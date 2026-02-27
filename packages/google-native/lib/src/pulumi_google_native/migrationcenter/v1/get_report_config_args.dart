// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReportConfig.
class GetReportConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reportConfigId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reportConfigId: pulumi.Input.asInput<String>(map['reportConfigId']),
    );
  }
}
