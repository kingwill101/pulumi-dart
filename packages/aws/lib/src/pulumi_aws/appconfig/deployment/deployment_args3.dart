// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Deployment.
class DeploymentArgs3 {
  /// Application ID. Must be between 4 and 7 characters in length.
  final Input<String> applicationId;

  /// Configuration profile ID. Must be between 4 and 7 characters in length.
  final Input<String> configurationProfileId;

  /// Configuration version to deploy. Can be at most 1024 characters.
  final Input<String> configurationVersion;

  /// Deployment strategy ID or name of a predefined deployment strategy. See [Predefined Deployment Strategies](https://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-deployment-strategy.html#appconfig-creating-deployment-strategy-predefined) for more details.
  final Input<String> deploymentStrategyId;

  /// Description of the deployment. Can be at most 1024 characters.
  final Input<String>? description;

  /// Environment ID. Must be between 4 and 7 characters in length.
  final Input<String> environmentId;

  /// The KMS key identifier (key ID, key alias, or key ARN). AppConfig uses this to encrypt the configuration data using a customer managed key.
  final Input<String>? kmsKeyIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DeploymentArgs3({
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

  factory DeploymentArgs3.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs3(
      applicationId: Input.asInput<String>(map['applicationId']),
      configurationProfileId:
          Input.asInput<String>(map['configurationProfileId']),
      configurationVersion: Input.asInput<String>(map['configurationVersion']),
      deploymentStrategyId: Input.asInput<String>(map['deploymentStrategyId']),
      description: Input.asOptionalInput<String>(map['description']),
      environmentId: Input.asInput<String>(map['environmentId']),
      kmsKeyIdentifier: Input.asOptionalInput<String>(map['kmsKeyIdentifier']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
