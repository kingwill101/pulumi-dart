// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_log_data_protection_policy_document_statement_operation_audit_findings_destination.dart';

class GetLogDataProtectionPolicyDocumentStatementOperationAudit {
  /// Configures destinations to send audit findings to.
  final pulumi.Input<GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination> findingsDestination;

  /// Creates a new [GetLogDataProtectionPolicyDocumentStatementOperationAudit].
  /// [findingsDestination] Configures destinations to send audit findings to.
  GetLogDataProtectionPolicyDocumentStatementOperationAudit({
    required this.findingsDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'findingsDestination': pulumi.Input.mapInputValue<GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination, Map<String, dynamic>>(findingsDestination, (value) => value.toMap()),
    };
  }

  factory GetLogDataProtectionPolicyDocumentStatementOperationAudit.fromMap(Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentStatementOperationAudit(
      findingsDestination: (GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination.fromMap((map['findingsDestination']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

