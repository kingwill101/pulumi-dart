// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Deployment resources.
class DeploymentState {
  /// Application ID. Must be between 4 and 7 characters in length.
  final pulumi.Input<String?>? applicationId;
  /// ARN of the AppConfig Deployment.
  final pulumi.Input<String?>? arn;
  /// Configuration profile ID. Must be between 4 and 7 characters in length.
  final pulumi.Input<String?>? configurationProfileId;
  /// Configuration version to deploy. Can be at most 1024 characters.
  final pulumi.Input<String?>? configurationVersion;
  /// Deployment number.
  final pulumi.Input<int?>? deploymentNumber;
  /// Deployment strategy ID or name of a predefined deployment strategy. See [Predefined Deployment Strategies](https://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-deployment-strategy.html#appconfig-creating-deployment-strategy-predefined) for more details.
  final pulumi.Input<String?>? deploymentStrategyId;
  /// Description of the deployment. Can be at most 1024 characters.
  final pulumi.Input<String?>? description;
  /// Environment ID. Must be between 4 and 7 characters in length.
  final pulumi.Input<String?>? environmentId;
  /// ARN of the KMS key used to encrypt configuration data.
  final pulumi.Input<String?>? kmsKeyArn;
  /// KMS key identifier (key ID, key alias, or key ARN). AppConfig uses this to encrypt the configuration data using a customer managed key.
  final pulumi.Input<String?>? kmsKeyIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// State of the deployment.
  final pulumi.Input<String?>? state;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

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
  /// [kmsKeyIdentifier] KMS key identifier (key ID, key alias, or key ARN). AppConfig uses this to encrypt the configuration data using a customer managed key.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the deployment.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const DeploymentState({
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
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationProfileId: (() { final guardedValue = map['configurationProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationVersion: (() { final guardedValue = map['configurationVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentNumber: (() { final guardedValue = map['deploymentNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      deploymentStrategyId: (() { final guardedValue = map['deploymentStrategyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyIdentifier: (() { final guardedValue = map['kmsKeyIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
