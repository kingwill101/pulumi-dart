// ignore_for_file: unused_element, unnecessary_cast

import '../get_log_data_protection_policy_document_statement_operation_audit_findings_destination_cloudwatch_logs/get_log_data_protection_policy_document_statement_operation_audit_findings_destination_cloudwatch_logs.dart';
import '../get_log_data_protection_policy_document_statement_operation_audit_findings_destination_firehose/get_log_data_protection_policy_document_statement_operation_audit_findings_destination_firehose.dart';
import '../get_log_data_protection_policy_document_statement_operation_audit_findings_destination_s3/get_log_data_protection_policy_document_statement_operation_audit_findings_destination_s3.dart';

class GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination {
  /// Configures CloudWatch Logs as a findings destination.
  final GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs?
      cloudwatchLogs;

  /// Configures Kinesis Firehose as a findings destination.
  final GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose?
      firehose;

  /// Configures S3 as a findings destination.
  final GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3?
      s3;

  GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination({
    this.cloudwatchLogs,
    this.firehose,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchLogsValue = cloudwatchLogs;
    if (cloudwatchLogsValue != null) {
      map['cloudwatchLogs'] = cloudwatchLogsValue.toMap();
    }
    final firehoseValue = firehose;
    if (firehoseValue != null) {
      map['firehose'] = firehoseValue.toMap();
    }
    final s3Value = s3;
    if (s3Value != null) {
      map['s3'] = s3Value.toMap();
    }
    return map;
  }

  factory GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination.fromMap(
      Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination(
      cloudwatchLogs: map['cloudwatchLogs'] == null
          ? null
          : GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs
              .fromMap((map['cloudwatchLogs'] as Map).cast<String, dynamic>()),
      firehose: map['firehose'] == null
          ? null
          : GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose
              .fromMap((map['firehose'] as Map).cast<String, dynamic>()),
      s3: map['s3'] == null
          ? null
          : GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3
              .fromMap((map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}
