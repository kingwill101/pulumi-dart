// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getReport.
class GetReportArgs {
  final Input<String> organizationId;
  final Input<String> reportId;

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
      organizationId: Input.asInput<String>(map['organizationId']),
      reportId: Input.asInput<String>(map['reportId']),
    );
  }
}
