// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_policy_document_statement/get_policy_document_statement.dart';

/// Arguments for getPolicyDocument.
class GetPolicyDocumentArgs {
  final Input<String>? overrideJson;

  /// List of IAM policy documents that are merged together into the exported document. In merging, statements with non-blank `sid`s will override statements with the same `sid` from earlier documents in the list. Statements with non-blank `sid`s will also override statements with the same `sid` from `source_policy_documents`.  Non-overriding statements will be added to the exported document.
  final Input<List<String>>? overridePolicyDocuments;

  /// ID for the policy document.
  final Input<String>? policyId;
  final Input<String>? sourceJson;

  /// List of IAM policy documents that are merged together into the exported document. Statements defined in `source_policy_documents` must have unique `sid`s. Statements with the same `sid` from `override_policy_documents` will override source statements.
  final Input<List<String>>? sourcePolicyDocuments;

  /// Configuration block for a policy statement. Detailed below.
  final Input<List<GetPolicyDocumentStatement>>? statements;

  /// IAM policy document version. Valid values are `2008-10-17` and `2012-10-17`. Defaults to `2012-10-17`. For more information, see the [AWS IAM User Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_version.html).
  final Input<String>? version;

  GetPolicyDocumentArgs({
    this.overrideJson,
    this.overridePolicyDocuments,
    this.policyId,
    this.sourceJson,
    this.sourcePolicyDocuments,
    this.statements,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final overrideJsonValue = overrideJson;
    if (overrideJsonValue != null) {
      map['overrideJson'] = overrideJsonValue;
    }
    final overridePolicyDocumentsValue = overridePolicyDocuments;
    if (overridePolicyDocumentsValue != null) {
      map['overridePolicyDocuments'] = overridePolicyDocumentsValue;
    }
    final policyIdValue = policyId;
    if (policyIdValue != null) {
      map['policyId'] = policyIdValue;
    }
    final sourceJsonValue = sourceJson;
    if (sourceJsonValue != null) {
      map['sourceJson'] = sourceJsonValue;
    }
    final sourcePolicyDocumentsValue = sourcePolicyDocuments;
    if (sourcePolicyDocumentsValue != null) {
      map['sourcePolicyDocuments'] = sourcePolicyDocumentsValue;
    }
    final statementsValue = statements;
    if (statementsValue != null) {
      map['statements'] = Input.mapOptionalInputValue<
              List<GetPolicyDocumentStatement>, List<Map<String, dynamic>>>(
          statementsValue,
          (value) => Input.encodeList<GetPolicyDocumentStatement,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetPolicyDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyDocumentArgs(
      overrideJson: Input.asOptionalInput<String>(map['overrideJson']),
      overridePolicyDocuments:
          Input.asOptionalInput<List<String>>(map['overridePolicyDocuments']),
      policyId: Input.asOptionalInput<String>(map['policyId']),
      sourceJson: Input.asOptionalInput<String>(map['sourceJson']),
      sourcePolicyDocuments:
          Input.asOptionalInput<List<String>>(map['sourcePolicyDocuments']),
      statements: Input.asOptionalInput<List<GetPolicyDocumentStatement>>(
          map['statements']),
      version: Input.asOptionalInput<String>(map['version']),
    );
  }
}
