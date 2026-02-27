// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSecurityReport.
class GetSecurityReportArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> securityReportId;

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
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      securityReportId: pulumi.Input.asInput<String>(map['securityReportId']),
    );
  }
}
