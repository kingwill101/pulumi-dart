// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_log_data_protection_policy_document_configuration.dart';
import 'get_log_data_protection_policy_document_statement.dart';

/// {@template pulumi_cloudwatch_get_log_data_protection_policy_document_get_log_data_protection_policy_document_args_doc}
/// Arguments for getLogDataProtectionPolicyDocument.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_get_log_data_protection_policy_document_get_log_data_protection_policy_document_args_doc}
class GetLogDataProtectionPolicyDocumentArgs {
  final pulumi.Input<GetLogDataProtectionPolicyDocumentConfiguration>? configuration;
  final pulumi.Input<String>? description;
  /// The name of the data protection policy document.
  final pulumi.Input<String> name;
  /// Configures the data protection policy.
  ///
  /// > There must be exactly two statements: the first with an `audit` operation, and the second with a `deidentify` operation.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<GetLogDataProtectionPolicyDocumentStatement>> statements;
  final pulumi.Input<String>? version;

  /// Creates a new [GetLogDataProtectionPolicyDocumentArgs].
  /// [configuration] Optional.
  /// [description] Optional.
  /// [name] The name of the data protection policy document.
  /// [statements] Configures the data protection policy.
  /// [version] Optional.
  GetLogDataProtectionPolicyDocumentArgs({
    this.configuration,
    this.description,
    required this.name,
    required this.statements,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<GetLogDataProtectionPolicyDocumentConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'description': ?description,
      'name': name,
      'statements': pulumi.Input.mapInputValue<List<GetLogDataProtectionPolicyDocumentStatement>, List<Map<String, dynamic>>>(statements, (value) => pulumi.Input.encodeList<GetLogDataProtectionPolicyDocumentStatement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory GetLogDataProtectionPolicyDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentArgs(
      configuration: map['configuration'] == null ? null : (GetLogDataProtectionPolicyDocumentConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: (map['name'] as String).input(),
      statements: (pulumi.Input.decodeList<GetLogDataProtectionPolicyDocumentStatement>(map['statements'], (value) => GetLogDataProtectionPolicyDocumentStatement.fromMap((value as Map).cast<String, dynamic>()))).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

