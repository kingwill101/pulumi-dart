// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSecurityReport.
class GetSecurityReportArgs {
  final Input<String> environmentId;
  final Input<String> organizationId;
  final Input<String> securityReportId;

  GetSecurityReportArgs({
    required this.environmentId,
    required this.organizationId,
    required this.securityReportId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['organizationId'] = organizationId;
    map['securityReportId'] = securityReportId;
    return map;
  }

  factory GetSecurityReportArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityReportArgs(
      environmentId: Input.asInput<String>(map['environmentId']),
      organizationId: Input.asInput<String>(map['organizationId']),
      securityReportId: Input.asInput<String>(map['securityReportId']),
    );
  }
}
