// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_log_data_protection_policy_document_statement_operation_audit.dart';
import 'get_log_data_protection_policy_document_statement_operation_deidentify.dart';

class GetLogDataProtectionPolicyDocumentStatementOperation {
  /// Configures the detection of sensitive data.
  final pulumi.Input<GetLogDataProtectionPolicyDocumentStatementOperationAudit>? audit;
  /// Configures the masking of sensitive data.
  ///
  /// > Every policy statement must specify exactly one operation.
  final pulumi.Input<GetLogDataProtectionPolicyDocumentStatementOperationDeidentify>? deidentify;

  /// Creates a new [GetLogDataProtectionPolicyDocumentStatementOperation].
  /// [audit] Configures the detection of sensitive data.
  /// [deidentify] Configures the masking of sensitive data.
  GetLogDataProtectionPolicyDocumentStatementOperation({
    this.audit,
    this.deidentify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audit': ?pulumi.Input.mapOptionalInputValue<GetLogDataProtectionPolicyDocumentStatementOperationAudit, Map<String, dynamic>>(audit, (value) => value.toMap()),
      'deidentify': ?pulumi.Input.mapOptionalInputValue<GetLogDataProtectionPolicyDocumentStatementOperationDeidentify, Map<String, dynamic>>(deidentify, (value) => value.toMap()),
    };
  }

  factory GetLogDataProtectionPolicyDocumentStatementOperation.fromMap(Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentStatementOperation(
      audit: map['audit'] == null ? null : ((GetLogDataProtectionPolicyDocumentStatementOperationAudit.fromMap((map['audit']! as Map).cast<String, dynamic>())).input()).input(),
      deidentify: map['deidentify'] == null ? null : ((GetLogDataProtectionPolicyDocumentStatementOperationDeidentify.fromMap((map['deidentify']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

