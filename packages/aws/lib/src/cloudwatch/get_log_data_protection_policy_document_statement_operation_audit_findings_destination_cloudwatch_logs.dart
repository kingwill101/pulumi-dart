// ignore_for_file: unused_element, unnecessary_cast

class GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs {
  /// Name of the CloudWatch Log Group to send findings to.
  final String logGroup;

  /// Creates a new [GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs].
  /// [logGroup] Name of the CloudWatch Log Group to send findings to.
  GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs({
    required this.logGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'logGroup': logGroup};
  }

  factory GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs(
      logGroup: map['logGroup'] as String,
    );
  }
}
