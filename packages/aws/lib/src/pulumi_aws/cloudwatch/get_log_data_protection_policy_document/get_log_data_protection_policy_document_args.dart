// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_log_data_protection_policy_document_configuration/get_log_data_protection_policy_document_configuration.dart';
import '../get_log_data_protection_policy_document_statement/get_log_data_protection_policy_document_statement.dart';

/// Arguments for getLogDataProtectionPolicyDocument.
class GetLogDataProtectionPolicyDocumentArgs {
  final Input<GetLogDataProtectionPolicyDocumentConfiguration>? configuration;
  final Input<String>? description;

  /// The name of the data protection policy document.
  final Input<String> name;

  /// Configures the data protection policy.
  ///
  /// > There must be exactly two statements: the first with an `audit` operation, and the second with a `deidentify` operation.
  ///
  /// The following arguments are optional:
  final Input<List<GetLogDataProtectionPolicyDocumentStatement>> statements;
  final Input<String>? version;

  GetLogDataProtectionPolicyDocumentArgs({
    this.configuration,
    this.description,
    required this.name,
    required this.statements,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] = Input.mapOptionalInputValue<
          GetLogDataProtectionPolicyDocumentConfiguration,
          Map<String, dynamic>>(configurationValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['name'] = name;
    map['statements'] = Input.mapInputValue<
            List<GetLogDataProtectionPolicyDocumentStatement>,
            List<Map<String, dynamic>>>(
        statements,
        (value) => Input.encodeList<GetLogDataProtectionPolicyDocumentStatement,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetLogDataProtectionPolicyDocumentArgs.fromMap(
      Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentArgs(
      configuration: Input.asOptionalInput<
              GetLogDataProtectionPolicyDocumentConfiguration>(
          map['configuration']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asInput<String>(map['name']),
      statements:
          Input.asInput<List<GetLogDataProtectionPolicyDocumentStatement>>(
              map['statements']),
      version: Input.asOptionalInput<String>(map['version']),
    );
  }
}
