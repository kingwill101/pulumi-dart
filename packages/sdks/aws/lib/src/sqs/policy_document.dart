// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../iam/policy_document_version.dart';
import '../iam/policy_statement.dart';

/// Represents an AWS IAM policy document that defines permissions for AWS resources and actions.
class PolicyDocument {
  final pulumi.Input<String?>? id;
  final pulumi.Input<List<PolicyStatement>> statement;
  final pulumi.Input<PolicyDocumentVersion> version;

  /// Creates a new [PolicyDocument].
  /// [id] Optional.
  /// [statement] Required.
  /// [version] Required.
  const PolicyDocument({
    this.id,
    required this.statement,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Id': ?id,
      'Statement': pulumi.Input.mapInputValue<List<PolicyStatement>, List<Map<String, dynamic>>>(statement, (value) => pulumi.Input.encodeList<PolicyStatement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'Version': pulumi.Input.mapInputValue<PolicyDocumentVersion, String>(version, (value) => value.wireValue),
    };
  }

  factory PolicyDocument.fromMap(Map<String, dynamic> map) {
    return PolicyDocument(
      id: (() { final guardedValue = map['Id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statement: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyStatement>(map['Statement']!, (value) => PolicyStatement.fromMap((value as Map).cast<String, dynamic>()))),
      version: pulumi.Input.fromValue(PolicyDocumentVersion.fromValue(map['Version']! as String)),
    );
  }
}
