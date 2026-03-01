// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../iam/policy_document_version.dart';
import '../iam/policy_statement.dart';

/// Represents an AWS IAM policy document that defines permissions for AWS resources and actions.
class PolicyDocument {
  final String? id;
  final List<PolicyStatement> statement;
  final PolicyDocumentVersion version;

  /// Creates a new [PolicyDocument].
  /// [id] Optional.
  /// [statement] Required.
  /// [version] Required.
  PolicyDocument({this.id, required this.statement, required this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Id': ?id,
      'Statement':
          pulumi.Input.encodeList<PolicyStatement, Map<String, dynamic>>(
            statement,
            (value) => value.toMap(),
          ),
      'Version': version.value,
    };
  }

  factory PolicyDocument.fromMap(Map<String, dynamic> map) {
    return PolicyDocument(
      id: map['Id'] == null ? null : map['Id'] as String,
      statement: pulumi.Input.decodeList<PolicyStatement>(
        map['Statement'],
        (value) =>
            PolicyStatement.fromMap((value as Map).cast<String, dynamic>()),
      ),
      version: PolicyDocumentVersion.fromValue(map['Version'] as String),
    );
  }
}
