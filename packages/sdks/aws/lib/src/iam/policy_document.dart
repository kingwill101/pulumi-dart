// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_document_version.dart';
import 'policy_statement.dart';

/// Represents an AWS IAM policy document that defines permissions for AWS resources and actions.
class PolicyDocument {
  final pulumi.Input<String>? id;
  final pulumi.Input<List<PolicyStatement>> statement;
  final pulumi.Input<PolicyDocumentVersion> version;

  /// Creates a new [PolicyDocument].
  /// [id] Optional.
  /// [statement] Required.
  /// [version] Required.
  PolicyDocument({
    this.id,
    required this.statement,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Id': ?id,
      'Statement': pulumi.Input.mapInputValue<List<PolicyStatement>, List<Map<String, dynamic>>>(statement, (value) => pulumi.Input.encodeList<PolicyStatement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'Version': pulumi.Input.mapInputValue<PolicyDocumentVersion, String>(version, (value) => value.value),
    };
  }

  factory PolicyDocument.fromMap(Map<String, dynamic> map) {
    return PolicyDocument(
      id: map['Id'] == null ? null : ((map['Id'] as String).input()).input(),
      statement: (pulumi.Input.decodeList<PolicyStatement>(map['Statement']!, (value) => PolicyStatement.fromMap((value as Map).cast<String, dynamic>()))).input(),
      version: (PolicyDocumentVersion.fromValue(map['Version']! as String)).input(),
    );
  }
}

