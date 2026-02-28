// ignore_for_file: unused_element, unnecessary_cast

import 'get_log_data_protection_policy_document_statement_operation_audit.dart';
import 'get_log_data_protection_policy_document_statement_operation_deidentify.dart';

class GetLogDataProtectionPolicyDocumentStatementOperation {
  /// Configures the detection of sensitive data.
  final GetLogDataProtectionPolicyDocumentStatementOperationAudit? audit;
  /// Configures the masking of sensitive data.
  ///
  /// > Every policy statement must specify exactly one operation.
  final GetLogDataProtectionPolicyDocumentStatementOperationDeidentify? deidentify;

  /// Creates a new [GetLogDataProtectionPolicyDocumentStatementOperation].
  /// [audit] Configures the detection of sensitive data.
  /// [deidentify] Configures the masking of sensitive data.
  GetLogDataProtectionPolicyDocumentStatementOperation({
    this.audit,
    this.deidentify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audit': ?audit == null ? null : audit!.toMap(),
      'deidentify': ?deidentify == null ? null : deidentify!.toMap(),
    };
  }

  factory GetLogDataProtectionPolicyDocumentStatementOperation.fromMap(Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentStatementOperation(
      audit: map['audit'] == null ? null : GetLogDataProtectionPolicyDocumentStatementOperationAudit.fromMap((map['audit'] as Map).cast<String, dynamic>()),
      deidentify: map['deidentify'] == null ? null : GetLogDataProtectionPolicyDocumentStatementOperationDeidentify.fromMap((map['deidentify'] as Map).cast<String, dynamic>()),
    );
  }
}

