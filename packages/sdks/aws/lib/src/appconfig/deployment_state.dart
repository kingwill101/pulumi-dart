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
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? configurationProfileId,
    pulumi.Output<String>? configurationVersion,
    pulumi.Output<int>? deploymentNumber,
    pulumi.Output<String>? deploymentStrategyId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? environmentId,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<String>? kmsKeyIdentifier,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      configurationProfileId = pulumi.Input.asOptionalInput<String>(configurationProfileId),
      configurationVersion = pulumi.Input.asOptionalInput<String>(configurationVersion),
      deploymentNumber = pulumi.Input.asOptionalInput<int>(deploymentNumber),
      deploymentStrategyId = pulumi.Input.asOptionalInput<String>(deploymentStrategyId),
      description = pulumi.Input.asOptionalInput<String>(description),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      kmsKeyIdentifier = pulumi.Input.asOptionalInput<String>(kmsKeyIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      configurationProfileId: map['configurationProfileId'] == null ? null : pulumi.Output.create<String>(map['configurationProfileId'] as String),
      configurationVersion: map['configurationVersion'] == null ? null : pulumi.Output.create<String>(map['configurationVersion'] as String),
      deploymentNumber: map['deploymentNumber'] == null ? null : pulumi.Output.create<int>(map['deploymentNumber'] as int),
      deploymentStrategyId: map['deploymentStrategyId'] == null ? null : pulumi.Output.create<String>(map['deploymentStrategyId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      kmsKeyIdentifier: map['kmsKeyIdentifier'] == null ? null : pulumi.Output.create<String>(map['kmsKeyIdentifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

