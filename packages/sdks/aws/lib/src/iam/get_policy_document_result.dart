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
      'statements': ?(() {
        final guardedValue = statements;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetPolicyDocumentStatement,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'version': ?version,
    };
  }

  factory GetPolicyDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyDocumentResult(
      id: map['id'] as String,
      json: map['json'] as String,
      minifiedJson: map['minifiedJson'] as String,
      overrideJson: (() {
        final guardedValue = map['overrideJson'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      overridePolicyDocuments: (() {
        final guardedValue = map['overridePolicyDocuments'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      policyId: (() {
        final guardedValue = map['policyId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sourceJson: (() {
        final guardedValue = map['sourceJson'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sourcePolicyDocuments: (() {
        final guardedValue = map['sourcePolicyDocuments'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      statements: (() {
        final guardedValue = map['statements'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetPolicyDocumentStatement>(
          guardedValue,
          (value) => GetPolicyDocumentStatement.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
