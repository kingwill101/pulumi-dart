// ignore_for_file: unused_element, unnecessary_cast

class QuicksetupConfigurationManagerConfigurationDefinition {
  final String? id;
  final String? localDeploymentAdministrationRoleArn;

  /// Name of the IAM role used to deploy local configurations.
  final String? localDeploymentExecutionRoleName;

  /// Parameters for the configuration definition type. Parameters for configuration definitions vary based the configuration type. See the [AWS API documentation](https://docs.aws.amazon.com/quick-setup/latest/APIReference/API_ConfigurationDefinitionInput.html) for a complete list of parameters for each configuration type.
  final Map<String, String> parameters;

  /// Type of the Quick Setup configuration.
  final String type;

  /// Version of the Quick Setup type to use.
  final String? typeVersion;

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
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final localDeploymentAdministrationRoleArnValue =
        localDeploymentAdministrationRoleArn;
    if (localDeploymentAdministrationRoleArnValue != null) {
      map['localDeploymentAdministrationRoleArn'] =
          localDeploymentAdministrationRoleArnValue;
    }
    final localDeploymentExecutionRoleNameValue =
        localDeploymentExecutionRoleName;
    if (localDeploymentExecutionRoleNameValue != null) {
      map['localDeploymentExecutionRoleName'] =
          localDeploymentExecutionRoleNameValue;
    }
    map['parameters'] = parameters;
    map['type'] = type;
    final typeVersionValue = typeVersion;
    if (typeVersionValue != null) {
      map['typeVersion'] = typeVersionValue;
    }
    return map;
  }

  factory QuicksetupConfigurationManagerConfigurationDefinition.fromMap(
      Map<String, dynamic> map) {
    return QuicksetupConfigurationManagerConfigurationDefinition(
      id: map['id'] == null ? null : map['id'] as String,
      localDeploymentAdministrationRoleArn:
          map['localDeploymentAdministrationRoleArn'] == null
              ? null
              : map['localDeploymentAdministrationRoleArn'] as String,
      localDeploymentExecutionRoleName:
          map['localDeploymentExecutionRoleName'] == null
              ? null
              : map['localDeploymentExecutionRoleName'] as String,
      parameters: (map['parameters'] as Map).cast<String, String>(),
      type: map['type'] as String,
      typeVersion:
          map['typeVersion'] == null ? null : map['typeVersion'] as String,
    );
  }
}
