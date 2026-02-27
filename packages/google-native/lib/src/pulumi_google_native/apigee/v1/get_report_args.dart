// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReport.
class GetReportArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> reportId;

  GetReportArgs({
    required this.organizationId,
    required this.reportId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    map['reportId'] = reportId;
    return map;
  }

  factory GetReportArgs.fromMap(Map<String, dynamic> map) {
    return GetReportArgs(
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      reportId: pulumi.Input.asInput<String>(map['reportId']),
    );
  }
}
