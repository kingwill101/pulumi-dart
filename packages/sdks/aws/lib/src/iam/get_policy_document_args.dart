// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_document_statement.dart';

/// {@template pulumi_iam_get_policy_document_get_policy_document_args_doc}
/// Arguments for getPolicyDocument.
/// {@endtemplate}
/// {@macro pulumi_iam_get_policy_document_get_policy_document_args_doc}
class GetPolicyDocumentArgs {
  final pulumi.Input<String>? overrideJson;
  /// List of IAM policy documents that are merged together into the exported document. In merging, statements with non-blank `sid`s will override statements with the same `sid` from earlier documents in the list. Statements with non-blank `sid`s will also override statements with the same `sid` from `sourcePolicyDocuments`.  Non-overriding statements will be added to the exported document.
  final pulumi.Input<List<String>>? overridePolicyDocuments;
  /// ID for the policy document.
  final pulumi.Input<String>? policyId;
  final pulumi.Input<String>? sourceJson;
  /// List of IAM policy documents that are merged together into the exported document. Statements defined in `sourcePolicyDocuments` must have unique `sid`s. Statements with the same `sid` from `overridePolicyDocuments` will override source statements.
  final pulumi.Input<List<String>>? sourcePolicyDocuments;
  /// Configuration block for a policy statement. Detailed below.
  final pulumi.Input<List<GetPolicyDocumentStatement>>? statements;
  /// IAM policy document version. Valid values are `2008-10-17` and `2012-10-17`. Defaults to `2012-10-17`. For more information, see the [AWS IAM User Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_version.html).
  final pulumi.Input<String>? version;

  /// Creates a new [GetPolicyDocumentArgs].
  /// [overrideJson] Optional.
  /// [overridePolicyDocuments] List of IAM policy documents that are merged together into the exported document. In merging, statements with non-blank `sid`s will override statements with the same `sid` from earlier documents in the list. Statements with non-blank `sid`s will also override statements with the same `sid` from `sourcePolicyDocuments`.  Non-overriding statements will be added to the exported document.
  /// [policyId] ID for the policy document.
  /// [sourceJson] Optional.
  /// [sourcePolicyDocuments] List of IAM policy documents that are merged together into the exported document. Statements defined in `sourcePolicyDocuments` must have unique `sid`s. Statements with the same `sid` from `overridePolicyDocuments` will override source statements.
  /// [statements] Configuration block for a policy statement. Detailed below.
  /// [version] IAM policy document version. Valid values are `2008-10-17` and `2012-10-17`. Defaults to `2012-10-17`. For more information, see the [AWS IAM User Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_version.html).
  const GetPolicyDocumentArgs({
    this.overrideJson,
    this.overridePolicyDocuments,
    this.policyId,
    this.sourceJson,
    this.sourcePolicyDocuments,
    this.statements,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overrideJson': ?overrideJson,
      'overridePolicyDocuments': ?overridePolicyDocuments,
      'policyId': ?policyId,
      'sourceJson': ?sourceJson,
      'sourcePolicyDocuments': ?sourcePolicyDocuments,
      'statements': ?pulumi.Input.mapOptionalInputValue<List<GetPolicyDocumentStatement>, List<Map<String, dynamic>>>(statements, (value) => pulumi.Input.encodeList<GetPolicyDocumentStatement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory GetPolicyDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyDocumentArgs(
      overrideJson: (() { final guardedValue = map['overrideJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overridePolicyDocuments: (() { final guardedValue = map['overridePolicyDocuments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceJson: (() { final guardedValue = map['sourceJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePolicyDocuments: (() { final guardedValue = map['sourcePolicyDocuments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      statements: (() { final guardedValue = map['statements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetPolicyDocumentStatement>(guardedValue, (value) => GetPolicyDocumentStatement.fromMap((value as Map).cast<String, dynamic>()))); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
