// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReportConfig.
class GetReportConfigMigrationcenterV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reportConfigId;

  GetReportConfigMigrationcenterV1alpha1Args({
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

  factory GetReportConfigMigrationcenterV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetReportConfigMigrationcenterV1alpha1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reportConfigId: pulumi.Input.asInput<String>(map['reportConfigId']),
    );
  }
}
