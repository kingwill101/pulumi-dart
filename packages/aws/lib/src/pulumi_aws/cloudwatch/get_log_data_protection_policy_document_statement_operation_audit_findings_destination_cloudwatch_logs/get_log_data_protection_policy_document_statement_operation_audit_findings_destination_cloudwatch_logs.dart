// ignore_for_file: unused_element, unnecessary_cast

class GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs {
  /// Name of the CloudWatch Log Group to send findings to.
  final String logGroup;

  GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs({
    required this.logGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logGroup'] = logGroup;
    return map;
  }

  factory GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs.fromMap(
      Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs(
      logGroup: map['logGroup'] as String,
    );
  }
}
