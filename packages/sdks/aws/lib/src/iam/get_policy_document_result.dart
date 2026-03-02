// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_document_statement.dart';

/// Result data returned by getPolicyDocument.
class GetPolicyDocumentResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Standard JSON policy document rendered based on the arguments above.
  final String json;
  /// Minified JSON policy document rendered based on the arguments above.
  final String minifiedJson;
  final String? overrideJson;
  final List<String>? overridePolicyDocuments;
  final String? policyId;
  final String? sourceJson;
  final List<String>? sourcePolicyDocuments;
  final List<GetPolicyDocumentStatement>? statements;
  final String? version;

  /// Creates a new [GetPolicyDocumentResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [json] Standard JSON policy document rendered based on the arguments above.
  /// [minifiedJson] Minified JSON policy document rendered based on the arguments above.
  /// [overrideJson] Optional.
  /// [overridePolicyDocuments] Optional.
  /// [policyId] Optional.
  /// [sourceJson] Optional.
  /// [sourcePolicyDocuments] Optional.
  /// [statements] Optional.
  /// [version] Optional.
  GetPolicyDocumentResult({
    required this.id,
    required this.json,
    required this.minifiedJson,
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
      'id': id,
      'json': json,
      'minifiedJson': minifiedJson,
      'overrideJson': ?overrideJson,
      'overridePolicyDocuments': ?overridePolicyDocuments,
      'policyId': ?policyId,
      'sourceJson': ?sourceJson,
      'sourcePolicyDocuments': ?sourcePolicyDocuments,
      'statements': ?statements == null ? null : pulumi.Input.encodeList<GetPolicyDocumentStatement, Map<String, dynamic>>(statements!, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory GetPolicyDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyDocumentResult(
      id: map['id'] as String,
      json: map['json'] as String,
      minifiedJson: map['minifiedJson'] as String,
      overrideJson: map['overrideJson'] == null ? null : map['overrideJson'] as String,
      overridePolicyDocuments: map['overridePolicyDocuments'] == null ? null : (map['overridePolicyDocuments'] as List).cast<String>(),
      policyId: map['policyId'] == null ? null : map['policyId'] as String,
      sourceJson: map['sourceJson'] == null ? null : map['sourceJson'] as String,
      sourcePolicyDocuments: map['sourcePolicyDocuments'] == null ? null : (map['sourcePolicyDocuments'] as List).cast<String>(),
      statements: map['statements'] == null ? null : pulumi.Input.decodeList<GetPolicyDocumentStatement>(map['statements']!, (value) => GetPolicyDocumentStatement.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

