// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_log_data_protection_policy_document_statement_operation_audit_findings_destination_cloudwatch_logs.dart';
import 'get_log_data_protection_policy_document_statement_operation_audit_findings_destination_firehose.dart';
import 'get_log_data_protection_policy_document_statement_operation_audit_findings_destination_s3.dart';

class GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination {
  /// Configures CloudWatch Logs as a findings destination.
  final pulumi.Input<GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs>? cloudwatchLogs;
  /// Configures Kinesis Firehose as a findings destination.
  final pulumi.Input<GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose>? firehose;
  /// Configures S3 as a findings destination.
  final pulumi.Input<GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3>? s3;

  /// Creates a new [GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination].
  /// [cloudwatchLogs] Configures CloudWatch Logs as a findings destination.
  /// [firehose] Configures Kinesis Firehose as a findings destination.
  /// [s3] Configures S3 as a findings destination.
  GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination({
    this.cloudwatchLogs,
    this.firehose,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogs': ?pulumi.Input.mapOptionalInputValue<GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs, Map<String, dynamic>>(cloudwatchLogs, (value) => value.toMap()),
      'firehose': ?pulumi.Input.mapOptionalInputValue<GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose, Map<String, dynamic>>(firehose, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination.fromMap(Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination(
      cloudwatchLogs: map['cloudwatchLogs'] == null ? null : ((GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs.fromMap((map['cloudwatchLogs']! as Map).cast<String, dynamic>())).input()).input(),
      firehose: map['firehose'] == null ? null : ((GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose.fromMap((map['firehose']! as Map).cast<String, dynamic>())).input()).input(),
      s3: map['s3'] == null ? null : ((GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3.fromMap((map['s3']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

