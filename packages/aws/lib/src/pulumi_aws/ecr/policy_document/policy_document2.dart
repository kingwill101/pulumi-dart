// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../../iam/policy_document_version/policy_document_version.dart';
import '../../iam/policy_statement/policy_statement.dart';

/// Represents an AWS IAM policy document that defines permissions for AWS resources and actions.
class PolicyDocument2 {
  final String? id;
  final List<PolicyStatement> statement;
  final PolicyDocumentVersion version;

  PolicyDocument2({
    this.id,
    required this.statement,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['Id'] = idValue;
    }
    map['Statement'] = Input.encodeList<PolicyStatement, Map<String, dynamic>>(
        statement, (value) => value.toMap());
    map['Version'] = version.value;
    return map;
  }

  factory PolicyDocument2.fromMap(Map<String, dynamic> map) {
    return PolicyDocument2(
      id: map['Id'] == null ? null : map['Id'] as String,
      statement: Input.decodeList<PolicyStatement>(
          map['Statement'],
          (value) =>
              PolicyStatement.fromMap((value as Map).cast<String, dynamic>())),
      version: PolicyDocumentVersion.fromValue(map['Version'] as String),
    );
  }
}
