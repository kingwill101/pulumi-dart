// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Deployment resources.
class DeploymentState {
  /// Application ID. Must be between 4 and 7 characters in length.
  final pulumi.Input<String>? applicationId;
  /// ARN of the AppConfig Deployment.
  final pulumi.Input<String>? arn;
  /// Configuration profile ID. Must be between 4 and 7 characters in length.
  final pulumi.Input<String>? configurationProfileId;
  /// Configuration version to deploy. Can be at most 1024 characters.
  final pulumi.Input<String>? configurationVersion;
  /// Deployment number.
  final pulumi.Input<int>? deploymentNumber;
  /// Deployment strategy ID or name of a predefined deployment strategy. See [Predefined Deployment Strategies](https://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-deployment-strategy.html#appconfig-creating-deployment-strategy-predefined) for more details.
  final pulumi.Input<String>? deploymentStrategyId;
  /// Description of the deployment. Can be at most 1024 characters.
  final pulumi.Input<String>? description;
  /// Environment ID. Must be between 4 and 7 characters in length.
  final pulumi.Input<String>? environmentId;
  /// ARN of the KMS key used to encrypt configuration data.
  final pulumi.Input<String>? kmsKeyArn;
  /// The KMS key identifier (key ID, key alias, or key ARN). AppConfig uses this to encrypt the configuration data using a customer managed key.
  final pulumi.Input<String>? kmsKeyIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of the deployment.
  final pulumi.Input<String>? state;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DeploymentState].
  /// [applicationId] Application ID. Must be between 4 and 7 characters in length.
  /// [arn] ARN of the AppConfig Deployment.
  /// [configurationProfileId] Configuration profile ID. Must be between 4 and 7 characters in length.
  /// [configurationVersion] Configuration version to deploy. Can be at most 1024 characters.
  /// [deploymentNumber] Deployment number.
  /// [deploymentStrategyId] Deployment strategy ID or name of a predefined deployment strategy. See [Predefined Deployment Strategies](https://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-deployment-strategy.html#appconfig-creating-deployment-strategy-predefined) for more details.
  /// [description] Description of the deployment. Can be at most 1024 characters.
  /// [environmentId] Environment ID. Must be between 4 and 7 characters in length.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt configuration data.
  /// [kmsKeyIdentifier] The KMS key identifier (key ID, key alias, or key ARN). AppConfig uses this to encrypt the configuration data using a customer managed key.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the deployment.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  DeploymentState({
    this.applicationId,
    this.arn,
    this.configurationProfileId,
    this.configurationVersion,
    this.deploymentNumber,
    this.deploymentStrategyId,
    this.description,
    this.environmentId,
    this.kmsKeyArn,
    this.kmsKeyIdentifier,
    this.region,
    this.state,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'arn': ?arn,
      'configurationProfileId': ?configurationProfileId,
      'configurationVersion': ?configurationVersion,
      'deploymentNumber': ?deploymentNumber,
      'deploymentStrategyId': ?deploymentStrategyId,
      'description': ?description,
      'environmentId': ?environmentId,
      'kmsKeyArn': ?kmsKeyArn,
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DeploymentState.fromMap(Map<String, dynamic> map) {
    return DeploymentState(
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      configurationProfileId: map['configurationProfileId'] == null ? null : (map['configurationProfileId'] as String).input(),
      configurationVersion: map['configurationVersion'] == null ? null : (map['configurationVersion'] as String).input(),
      deploymentNumber: map['deploymentNumber'] == null ? null : (map['deploymentNumber'] as int).input(),
      deploymentStrategyId: map['deploymentStrategyId'] == null ? null : (map['deploymentStrategyId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      environmentId: map['environmentId'] == null ? null : (map['environmentId'] as String).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : (map['kmsKeyArn'] as String).input(),
      kmsKeyIdentifier: map['kmsKeyIdentifier'] == null ? null : (map['kmsKeyIdentifier'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

