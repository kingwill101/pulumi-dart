// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../configuration_profile_validator/configuration_profile_validator.dart';

/// The set of arguments for ConfigurationProfile.
class ConfigurationProfileArgs {
  /// Application ID. Must be between 4 and 7 characters in length.
  final pulumi.Input<String> applicationId;

  /// Description of the configuration profile. Can be at most 1024 characters.
  final pulumi.Input<String>? description;

  /// The identifier for an Key Management Service key to encrypt new configuration data versions in the AppConfig hosted configuration store. This attribute is only used for hosted configuration types. The identifier can be an KMS key ID, alias, or the Amazon Resource Name (ARN) of the key ID or alias.
  final pulumi.Input<String>? kmsKeyIdentifier;

  /// URI to locate the configuration. You can specify the AWS AppConfig hosted configuration store, Systems Manager (SSM) document, an SSM Parameter Store parameter, or an Amazon S3 object. For the hosted configuration store, specify `hosted`. For an SSM document, specify either the document name in the format `ssm-document://<Document_name>` or the ARN. For a parameter, specify either the parameter name in the format `ssm-parameter://<Parameter_name>` or the ARN. For an Amazon S3 object, specify the URI in the following format: `s3://<bucket>/<objectKey>`.
  final pulumi.Input<String> locationUri;

  /// Name for the configuration profile. Must be between 1 and 128 characters in length.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of an IAM role with permission to access the configuration at the specified `location_uri`. A retrieval role ARN is not required for configurations stored in the AWS AppConfig `hosted` configuration store. It is required for all other sources that store your configuration.
  final pulumi.Input<String>? retrievalRoleArn;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Type of configurations contained in the profile. Valid values: `AWS.AppConfig.FeatureFlags` and `AWS.Freeform`.  Default: `AWS.Freeform`.
  final pulumi.Input<String>? type;

  /// Set of methods for validating the configuration. Maximum of 2. See Validator below for more details.
  final pulumi.Input<List<ConfigurationProfileValidator>>? validators;

  ConfigurationProfileArgs({
    required this.applicationId,
    this.description,
    this.kmsKeyIdentifier,
    required this.locationUri,
    this.name,
    this.region,
    this.retrievalRoleArn,
    this.tags,
    this.type,
    this.validators,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final kmsKeyIdentifierValue = kmsKeyIdentifier;
    if (kmsKeyIdentifierValue != null) {
      map['kmsKeyIdentifier'] = kmsKeyIdentifierValue;
    }
    map['locationUri'] = locationUri;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retrievalRoleArnValue = retrievalRoleArn;
    if (retrievalRoleArnValue != null) {
      map['retrievalRoleArn'] = retrievalRoleArnValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final validatorsValue = validators;
    if (validatorsValue != null) {
      map['validators'] = pulumi.Input.mapOptionalInputValue<
              List<ConfigurationProfileValidator>, List<Map<String, dynamic>>>(
          validatorsValue,
          (value) => pulumi.Input.encodeList<ConfigurationProfileValidator,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory ConfigurationProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileArgs(
      applicationId: pulumi.Input.asInput<String>(map['applicationId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      kmsKeyIdentifier:
          pulumi.Input.asOptionalInput<String>(map['kmsKeyIdentifier']),
      locationUri: pulumi.Input.asInput<String>(map['locationUri']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      retrievalRoleArn:
          pulumi.Input.asOptionalInput<String>(map['retrievalRoleArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
      validators:
          pulumi.Input.asOptionalInput<List<ConfigurationProfileValidator>>(
              map['validators']),
    );
  }
}
