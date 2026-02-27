// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHostSecurityReport.
class GetHostSecurityReportArgs {
  final pulumi.Input<String> hostSecurityReportId;
  final pulumi.Input<String> organizationId;

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
      hostSecurityReportId:
          pulumi.Input.asInput<String>(map['hostSecurityReportId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
