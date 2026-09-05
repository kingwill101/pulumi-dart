// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_log_data_protection_policy_document_configuration.dart';
import 'get_log_data_protection_policy_document_statement.dart';

/// Result data returned by getLogDataProtectionPolicyDocument.
class GetLogDataProtectionPolicyDocumentResult {
  final GetLogDataProtectionPolicyDocumentConfiguration? configuration;
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Standard JSON policy document rendered based on the arguments above.
  final String? json;
  final String? name;
  final List<GetLogDataProtectionPolicyDocumentStatement>? statements;
  final String? version;

  /// Creates a new [GetLogDataProtectionPolicyDocumentResult].
  /// [configuration] Optional.
  /// [description] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [json] Standard JSON policy document rendered based on the arguments above.
  /// [name] Optional.
  /// [statements] Optional.
  /// [version] Optional.
  const GetLogDataProtectionPolicyDocumentResult({
    this.configuration,
    this.description,
    this.id,
    this.json,
    this.name,
    this.statements,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration?.toMap(),
      'description': ?description,
      'id': ?id,
      'json': ?json,
      'name': ?name,
      'statements': ?(() { final guardedValue = statements; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLogDataProtectionPolicyDocumentStatement, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'version': ?version,
    };
  }

  factory GetLogDataProtectionPolicyDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentResult(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return GetLogDataProtectionPolicyDocumentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      json: (() { final guardedValue = map['json']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statements: (() { final guardedValue = map['statements']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLogDataProtectionPolicyDocumentStatement>(guardedValue, (value) => GetLogDataProtectionPolicyDocumentStatement.fromMap((value as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
