// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfig_deployment_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_appconfig_deployment_deployment_args_doc}
class DeploymentArgs {
  /// Application ID. Must be between 4 and 7 characters in length.
  final pulumi.Input<String> applicationId;

  /// Configuration profile ID. Must be between 4 and 7 characters in length.
  final pulumi.Input<String> configurationProfileId;

  /// Configuration version to deploy. Can be at most 1024 characters.
  final pulumi.Input<String> configurationVersion;

  /// Deployment strategy ID or name of a predefined deployment strategy. See [Predefined Deployment Strategies](https://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-deployment-strategy.html#appconfig-creating-deployment-strategy-predefined) for more details.
  final pulumi.Input<String> deploymentStrategyId;

  /// Description of the deployment. Can be at most 1024 characters.
  final pulumi.Input<String>? description;

  /// Environment ID. Must be between 4 and 7 characters in length.
  final pulumi.Input<String> environmentId;

  /// The KMS key identifier (key ID, key alias, or key ARN). AppConfig uses this to encrypt the configuration data using a customer managed key.
  final pulumi.Input<String>? kmsKeyIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DeploymentArgs].
  /// [applicationId] Application ID. Must be between 4 and 7 characters in length.
  /// [configurationProfileId] Configuration profile ID. Must be between 4 and 7 characters in length.
  /// [configurationVersion] Configuration version to deploy. Can be at most 1024 characters.
  /// [deploymentStrategyId] Deployment strategy ID or name of a predefined deployment strategy. See [Predefined Deployment Strategies](https://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-deployment-strategy.html#appconfig-creating-deployment-strategy-predefined) for more details.
  /// [description] Description of the deployment. Can be at most 1024 characters.
  /// [environmentId] Environment ID. Must be between 4 and 7 characters in length.
  /// [kmsKeyIdentifier] The KMS key identifier (key ID, key alias, or key ARN). AppConfig uses this to encrypt the configuration data using a customer managed key.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DeploymentArgs({
    required this.applicationId,
    required this.configurationProfileId,
    required this.configurationVersion,
    required this.deploymentStrategyId,
    this.description,
    required this.environmentId,
    this.kmsKeyIdentifier,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'configurationProfileId': configurationProfileId,
      'configurationVersion': configurationVersion,
      'deploymentStrategyId': deploymentStrategyId,
      'description': ?description,
      'environmentId': environmentId,
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      configurationProfileId: pulumi.Input.fromValue(
        map['configurationProfileId'] as String,
      ),
      configurationVersion: pulumi.Input.fromValue(
        map['configurationVersion'] as String,
      ),
      deploymentStrategyId: pulumi.Input.fromValue(
        map['deploymentStrategyId'] as String,
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      kmsKeyIdentifier: (() {
        final guardedValue = map['kmsKeyIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
