// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_log_data_protection_policy_document_configuration.dart';
import 'get_log_data_protection_policy_document_statement.dart';

/// Result data returned by getLogDataProtectionPolicyDocument.
class GetLogDataProtectionPolicyDocumentResult {
  final GetLogDataProtectionPolicyDocumentConfiguration? configuration;
  final String? description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Standard JSON policy document rendered based on the arguments above.
  final String json;
  final String name;
  final List<GetLogDataProtectionPolicyDocumentStatement> statements;
  final String? version;

  /// Creates a new [GetLogDataProtectionPolicyDocumentResult].
  /// [configuration] Optional.
  /// [description] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [json] Standard JSON policy document rendered based on the arguments above.
  /// [name] Required.
  /// [statements] Required.
  /// [version] Optional.
  GetLogDataProtectionPolicyDocumentResult({
    this.configuration,
    this.description,
    required this.id,
    required this.json,
    required this.name,
    required this.statements,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'description': ?description,
      'id': id,
      'json': json,
      'name': name,
      'statements':
          pulumi.Input.encodeList<
            GetLogDataProtectionPolicyDocumentStatement,
            Map<String, dynamic>
          >(statements, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory GetLogDataProtectionPolicyDocumentResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLogDataProtectionPolicyDocumentResult(
      configuration: map['configuration'] == null
          ? null
          : GetLogDataProtectionPolicyDocumentConfiguration.fromMap(
              (map['configuration'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      id: map['id'] as String,
      json: map['json'] as String,
      name: map['name'] as String,
      statements:
          pulumi.Input.decodeList<GetLogDataProtectionPolicyDocumentStatement>(
            map['statements'],
            (value) => GetLogDataProtectionPolicyDocumentStatement.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
