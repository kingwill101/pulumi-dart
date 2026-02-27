// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Deployment.
class DeploymentAppconfigArgs {
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

  DeploymentAppconfigArgs({
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
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    map['configurationProfileId'] = configurationProfileId;
    map['configurationVersion'] = configurationVersion;
    map['deploymentStrategyId'] = deploymentStrategyId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['environmentId'] = environmentId;
    final kmsKeyIdentifierValue = kmsKeyIdentifier;
    if (kmsKeyIdentifierValue != null) {
      map['kmsKeyIdentifier'] = kmsKeyIdentifierValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DeploymentAppconfigArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentAppconfigArgs(
      applicationId: pulumi.Input.asInput<String>(map['applicationId']),
      configurationProfileId:
          pulumi.Input.asInput<String>(map['configurationProfileId']),
      configurationVersion:
          pulumi.Input.asInput<String>(map['configurationVersion']),
      deploymentStrategyId:
          pulumi.Input.asInput<String>(map['deploymentStrategyId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      kmsKeyIdentifier:
          pulumi.Input.asOptionalInput<String>(map['kmsKeyIdentifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
