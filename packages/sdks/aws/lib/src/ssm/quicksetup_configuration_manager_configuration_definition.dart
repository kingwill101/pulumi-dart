// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QuicksetupConfigurationManagerConfigurationDefinition {
  final pulumi.Input<String>? id;
  final pulumi.Input<String>? localDeploymentAdministrationRoleArn;
  /// Name of the IAM role used to deploy local configurations.
  final pulumi.Input<String>? localDeploymentExecutionRoleName;
  /// Parameters for the configuration definition type. Parameters for configuration definitions vary based the configuration type. See the [AWS API documentation](https://docs.aws.amazon.com/quick-setup/latest/APIReference/API_ConfigurationDefinitionInput.html) for a complete list of parameters for each configuration type.
  final pulumi.Input<Map<String, String>> parameters;
  /// Type of the Quick Setup configuration.
  final pulumi.Input<String> type;
  /// Version of the Quick Setup type to use.
  final pulumi.Input<String>? typeVersion;

  /// Creates a new [QuicksetupConfigurationManagerConfigurationDefinition].
  /// [id] Optional.
  /// [localDeploymentAdministrationRoleArn] Optional.
  /// [localDeploymentExecutionRoleName] Name of the IAM role used to deploy local configurations.
  /// [parameters] Parameters for the configuration definition type. Parameters for configuration definitions vary based the configuration type. See the [AWS API documentation](https://docs.aws.amazon.com/quick-setup/latest/APIReference/API_ConfigurationDefinitionInput.html) for a complete list of parameters for each configuration type.
  /// [type] Type of the Quick Setup configuration.
  /// [typeVersion] Version of the Quick Setup type to use.
  QuicksetupConfigurationManagerConfigurationDefinition({
    this.id,
    this.localDeploymentAdministrationRoleArn,
    this.localDeploymentExecutionRoleName,
    required this.parameters,
    required this.type,
    this.typeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'localDeploymentAdministrationRoleArn': ?localDeploymentAdministrationRoleArn,
      'localDeploymentExecutionRoleName': ?localDeploymentExecutionRoleName,
      'parameters': parameters,
      'type': type,
      'typeVersion': ?typeVersion,
    };
  }

  factory QuicksetupConfigurationManagerConfigurationDefinition.fromMap(Map<String, dynamic> map) {
    return QuicksetupConfigurationManagerConfigurationDefinition(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      localDeploymentAdministrationRoleArn: map['localDeploymentAdministrationRoleArn'] == null ? null : (map['localDeploymentAdministrationRoleArn'] as String).input(),
      localDeploymentExecutionRoleName: map['localDeploymentExecutionRoleName'] == null ? null : (map['localDeploymentExecutionRoleName'] as String).input(),
      parameters: ((map['parameters'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      typeVersion: map['typeVersion'] == null ? null : (map['typeVersion'] as String).input(),
    );
  }
}

