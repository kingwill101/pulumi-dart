// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getHostSecurityReport.
class GetHostSecurityReportArgs {
  final Input<String> hostSecurityReportId;
  final Input<String> organizationId;

  GetHostSecurityReportArgs({
    required this.hostSecurityReportId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostSecurityReportId'] = hostSecurityReportId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetHostSecurityReportArgs.fromMap(Map<String, dynamic> map) {
    return GetHostSecurityReportArgs(
      hostSecurityReportId: Input.asInput<String>(map['hostSecurityReportId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
