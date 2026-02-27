// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_log_data_protection_policy_document_configuration/get_log_data_protection_policy_document_configuration.dart';
import '../get_log_data_protection_policy_document_statement/get_log_data_protection_policy_document_statement.dart';

/// Arguments for getLogDataProtectionPolicyDocument.
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
      map['configuration'] = pulumi.Input.mapOptionalInputValue<
          GetLogDataProtectionPolicyDocumentConfiguration,
          Map<String, dynamic>>(configurationValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['name'] = name;
    map['statements'] = pulumi.Input.mapInputValue<
            List<GetLogDataProtectionPolicyDocumentStatement>,
            List<Map<String, dynamic>>>(
        statements,
        (value) => pulumi.Input.encodeList<
            GetLogDataProtectionPolicyDocumentStatement,
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
      configuration: pulumi.Input.asOptionalInput<
              GetLogDataProtectionPolicyDocumentConfiguration>(
          map['configuration']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asInput<String>(map['name']),
      statements: pulumi.Input.asInput<
          List<GetLogDataProtectionPolicyDocumentStatement>>(map['statements']),
      version: pulumi.Input.asOptionalInput<String>(map['version']),
    );
  }
}
