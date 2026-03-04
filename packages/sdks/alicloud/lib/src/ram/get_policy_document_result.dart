// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_document_statement.dart';

/// Result data returned by getPolicyDocument.
class GetPolicyDocumentResult {
  /// Standard policy document rendered based on the arguments above.
  final String document;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;
  final List<GetPolicyDocumentStatement>? statements;
  final String? version;

  /// Creates a new [GetPolicyDocumentResult].
  /// [document] Standard policy document rendered based on the arguments above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [statements] Optional.
  /// [version] Optional.
  GetPolicyDocumentResult({
    required this.document,
    required this.id,
    this.outputFile,
    this.statements,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'document': document,
      'id': id,
      'outputFile': ?outputFile,
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
      document: map['document'] as String,
      id: map['id'] as String,
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
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
