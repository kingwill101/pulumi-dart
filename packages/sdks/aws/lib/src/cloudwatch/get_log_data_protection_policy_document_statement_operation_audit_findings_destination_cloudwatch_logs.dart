// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs {
  /// Name of the CloudWatch Log Group to send findings to.
  final pulumi.Input<String> logGroup;

  /// Creates a new [GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs].
  /// [logGroup] Name of the CloudWatch Log Group to send findings to.
  GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs({
    required this.logGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroup': logGroup,
    };
  }

  factory GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs.fromMap(Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs(
      logGroup: pulumi.Input.fromValue(map['logGroup'] as String),
    );
  }
}

