// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_document_statement.dart';

/// {@template pulumi_iam_get_policy_document_get_policy_document_args_doc}
/// Arguments for getPolicyDocument.
/// {@endtemplate}
/// {@macro pulumi_iam_get_policy_document_get_policy_document_args_doc}
class GetPolicyDocumentArgs {
  final pulumi.Input<String>? overrideJson;
  /// List of IAM policy documents that are merged together into the exported document. In merging, statements with non-blank `sid`s will override statements with the same `sid` from earlier documents in the list. Statements with non-blank `sid`s will also override statements with the same `sid` from `source_policy_documents`.  Non-overriding statements will be added to the exported document.
  final pulumi.Input<List<String>>? overridePolicyDocuments;
  /// ID for the policy document.
  final pulumi.Input<String>? policyId;
  final pulumi.Input<String>? sourceJson;
  /// List of IAM policy documents that are merged together into the exported document. Statements defined in `source_policy_documents` must have unique `sid`s. Statements with the same `sid` from `override_policy_documents` will override source statements.
  final pulumi.Input<List<String>>? sourcePolicyDocuments;
  /// Configuration block for a policy statement. Detailed below.
  final pulumi.Input<List<GetPolicyDocumentStatement>>? statements;
  /// IAM policy document version. Valid values are `2008-10-17` and `2012-10-17`. Defaults to `2012-10-17`. For more information, see the [AWS IAM User Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_version.html).
  final pulumi.Input<String>? version;

  /// Creates a new [GetPolicyDocumentArgs].
  /// [overrideJson] Optional.
  /// [overridePolicyDocuments] List of IAM policy documents that are merged together into the exported document. In merging, statements with non-blank `sid`s will override statements with the same `sid` from earlier documents in the list. Statements with non-blank `sid`s will also override statements with the same `sid` from `source_policy_documents`.  Non-overriding statements will be added to the exported document.
  /// [policyId] ID for the policy document.
  /// [sourceJson] Optional.
  /// [sourcePolicyDocuments] List of IAM policy documents that are merged together into the exported document. Statements defined in `source_policy_documents` must have unique `sid`s. Statements with the same `sid` from `override_policy_documents` will override source statements.
  /// [statements] Configuration block for a policy statement. Detailed below.
  /// [version] IAM policy document version. Valid values are `2008-10-17` and `2012-10-17`. Defaults to `2012-10-17`. For more information, see the [AWS IAM User Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_version.html).
  GetPolicyDocumentArgs({
    pulumi.Output<String>? overrideJson,
    pulumi.Output<List<String>>? overridePolicyDocuments,
    pulumi.Output<String>? policyId,
    pulumi.Output<String>? sourceJson,
    pulumi.Output<List<String>>? sourcePolicyDocuments,
    pulumi.Output<List<GetPolicyDocumentStatement>>? statements,
    pulumi.Output<String>? version,
  }) :
      overrideJson = pulumi.Input.asOptionalInput<String>(overrideJson),
      overridePolicyDocuments = pulumi.Input.asOptionalInput<List<String>>(overridePolicyDocuments),
      policyId = pulumi.Input.asOptionalInput<String>(policyId),
      sourceJson = pulumi.Input.asOptionalInput<String>(sourceJson),
      sourcePolicyDocuments = pulumi.Input.asOptionalInput<List<String>>(sourcePolicyDocuments),
      statements = pulumi.Input.asOptionalInput<List<GetPolicyDocumentStatement>>(statements),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      overrideJson: map['overrideJson'] == null ? null : pulumi.Output.create<String>(map['overrideJson'] as String),
      overridePolicyDocuments: map['overridePolicyDocuments'] == null ? null : pulumi.Output.create<List<String>>((map['overridePolicyDocuments'] as List).cast<String>()),
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
      sourceJson: map['sourceJson'] == null ? null : pulumi.Output.create<String>(map['sourceJson'] as String),
      sourcePolicyDocuments: map['sourcePolicyDocuments'] == null ? null : pulumi.Output.create<List<String>>((map['sourcePolicyDocuments'] as List).cast<String>()),
      statements: map['statements'] == null ? null : pulumi.Output.create<List<GetPolicyDocumentStatement>>(pulumi.Input.decodeList<GetPolicyDocumentStatement>(map['statements'], (value) => GetPolicyDocumentStatement.fromMap((value as Map).cast<String, dynamic>()))),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

