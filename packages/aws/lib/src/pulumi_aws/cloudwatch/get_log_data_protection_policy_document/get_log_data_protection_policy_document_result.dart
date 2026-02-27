// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_log_data_protection_policy_document_configuration/get_log_data_protection_policy_document_configuration.dart';
import '../get_log_data_protection_policy_document_statement/get_log_data_protection_policy_document_statement.dart';

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
    final map = <String, dynamic>{};
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] = configurationValue.toMap();
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['id'] = id;
    map['json'] = json;
    map['name'] = name;
    map['statements'] = pulumi.Input.encodeList<
        GetLogDataProtectionPolicyDocumentStatement,
        Map<String, dynamic>>(statements, (value) => value.toMap());
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetLogDataProtectionPolicyDocumentResult.fromMap(
      Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentResult(
      configuration: map['configuration'] == null
          ? null
          : GetLogDataProtectionPolicyDocumentConfiguration.fromMap(
              (map['configuration'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      id: map['id'] as String,
      json: map['json'] as String,
      name: map['name'] as String,
      statements:
          pulumi.Input.decodeList<GetLogDataProtectionPolicyDocumentStatement>(
              map['statements'],
              (value) => GetLogDataProtectionPolicyDocumentStatement.fromMap(
                  (value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
