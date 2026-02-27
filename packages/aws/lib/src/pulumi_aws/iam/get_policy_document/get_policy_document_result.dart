// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_policy_document_statement/get_policy_document_statement.dart';

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
    final map = <String, dynamic>{};
    map['id'] = id;
    map['json'] = json;
    map['minifiedJson'] = minifiedJson;
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
      map['statements'] = pulumi.Input.encodeList<GetPolicyDocumentStatement,
          Map<String, dynamic>>(statementsValue, (value) => value.toMap());
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetPolicyDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyDocumentResult(
      id: map['id'] as String,
      json: map['json'] as String,
      minifiedJson: map['minifiedJson'] as String,
      overrideJson:
          map['overrideJson'] == null ? null : map['overrideJson'] as String,
      overridePolicyDocuments: map['overridePolicyDocuments'] == null
          ? null
          : (map['overridePolicyDocuments'] as List).cast<String>(),
      policyId: map['policyId'] == null ? null : map['policyId'] as String,
      sourceJson:
          map['sourceJson'] == null ? null : map['sourceJson'] as String,
      sourcePolicyDocuments: map['sourcePolicyDocuments'] == null
          ? null
          : (map['sourcePolicyDocuments'] as List).cast<String>(),
      statements: map['statements'] == null
          ? null
          : pulumi.Input.decodeList<GetPolicyDocumentStatement>(
              map['statements'],
              (value) => GetPolicyDocumentStatement.fromMap(
                  (value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
