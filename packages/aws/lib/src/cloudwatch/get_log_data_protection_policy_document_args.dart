// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_log_data_protection_policy_document_configuration.dart';
import 'get_log_data_protection_policy_document_statement.dart';

/// {@template pulumi_cloudwatch_get_log_data_protection_policy_document_get_log_data_protection_policy_document_args_doc}
/// Arguments for getLogDataProtectionPolicyDocument.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_get_log_data_protection_policy_document_get_log_data_protection_policy_document_args_doc}
class GetLogDataProtectionPolicyDocumentArgs {
  final pulumi.Input<GetLogDataProtectionPolicyDocumentConfiguration>?
  configuration;
  final pulumi.Input<String>? description;

  /// The name of the data protection policy document.
  final pulumi.Input<String> name;

  /// Configures the data protection policy.
  ///
  /// > There must be exactly two statements: the first with an `audit` operation, and the second with a `deidentify` operation.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<GetLogDataProtectionPolicyDocumentStatement>>
  statements;
  final pulumi.Input<String>? version;

  /// Creates a new [GetLogDataProtectionPolicyDocumentArgs].
  /// [configuration] Optional.
  /// [description] Optional.
  /// [name] The name of the data protection policy document.
  /// [statements] Configures the data protection policy.
  /// [version] Optional.
  GetLogDataProtectionPolicyDocumentArgs({
    GetLogDataProtectionPolicyDocumentConfiguration? configuration,
    String? description,
    required String name,
    required List<GetLogDataProtectionPolicyDocumentStatement> statements,
    String? version,
  }) : configuration =
           pulumi.Input.asOptionalInput<
             GetLogDataProtectionPolicyDocumentConfiguration
           >(configuration),
       description = pulumi.Input.asOptionalInput<String>(description),
       name = pulumi.Input.asInput<String>(name),
       statements =
           pulumi.Input.asInput<
             List<GetLogDataProtectionPolicyDocumentStatement>
           >(statements),
       version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration':
          ?pulumi.Input.mapOptionalInputValue<
            GetLogDataProtectionPolicyDocumentConfiguration,
            Map<String, dynamic>
          >(configuration, (value) => value.toMap()),
      'description': ?description,
      'name': name,
      'statements':
          pulumi.Input.mapInputValue<
            List<GetLogDataProtectionPolicyDocumentStatement>,
            List<Map<String, dynamic>>
          >(
            statements,
            (value) =>
                pulumi.Input.encodeList<
                  GetLogDataProtectionPolicyDocumentStatement,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'version': ?version,
    };
  }

  factory GetLogDataProtectionPolicyDocumentArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLogDataProtectionPolicyDocumentArgs(
      configuration: map['configuration'] == null
          ? null
          : GetLogDataProtectionPolicyDocumentConfiguration.fromMap(
              (map['configuration'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
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
