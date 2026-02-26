// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../configuration_profile_validator/configuration_profile_validator.dart';

/// The set of arguments for ConfigurationProfile.
class ConfigurationProfileArgs {
  /// Application ID. Must be between 4 and 7 characters in length.
  final Input<String> applicationId;

  /// Description of the configuration profile. Can be at most 1024 characters.
  final Input<String>? description;

  /// The identifier for an Key Management Service key to encrypt new configuration data versions in the AppConfig hosted configuration store. This attribute is only used for hosted configuration types. The identifier can be an KMS key ID, alias, or the Amazon Resource Name (ARN) of the key ID or alias.
  final Input<String>? kmsKeyIdentifier;

  /// URI to locate the configuration. You can specify the AWS AppConfig hosted configuration store, Systems Manager (SSM) document, an SSM Parameter Store parameter, or an Amazon S3 object. For the hosted configuration store, specify <span pulumi-lang-nodejs="`hosted`" pulumi-lang-dotnet="`Hosted`" pulumi-lang-go="`hosted`" pulumi-lang-python="`hosted`" pulumi-lang-yaml="`hosted`" pulumi-lang-java="`hosted`">`hosted`</span>. For an SSM document, specify either the document name in the format `ssm-document://<Document_name>` or the ARN. For a parameter, specify either the parameter name in the format `ssm-parameter://<Parameter_name>` or the ARN. For an Amazon S3 object, specify the URI in the following format: `s3://<bucket>/<objectKey>`.
  final Input<String> locationUri;

  /// Name for the configuration profile. Must be between 1 and 128 characters in length.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of an IAM role with permission to access the configuration at the specified <span pulumi-lang-nodejs="`locationUri`" pulumi-lang-dotnet="`LocationUri`" pulumi-lang-go="`locationUri`" pulumi-lang-python="`location_uri`" pulumi-lang-yaml="`locationUri`" pulumi-lang-java="`locationUri`">`location_uri`</span>. A retrieval role ARN is not required for configurations stored in the AWS AppConfig <span pulumi-lang-nodejs="`hosted`" pulumi-lang-dotnet="`Hosted`" pulumi-lang-go="`hosted`" pulumi-lang-python="`hosted`" pulumi-lang-yaml="`hosted`" pulumi-lang-java="`hosted`">`hosted`</span> configuration store. It is required for all other sources that store your configuration.
  final Input<String>? retrievalRoleArn;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Type of configurations contained in the profile. Valid values: `AWS.AppConfig.FeatureFlags` and `AWS.Freeform`.  Default: `AWS.Freeform`.
  final Input<String>? type;

  /// Set of methods for validating the configuration. Maximum of 2. See Validator below for more details.
  final Input<List<ConfigurationProfileValidator>>? validators;

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
      map['validators'] = Input.mapOptionalInputValue<
              List<ConfigurationProfileValidator>, List<Map<String, dynamic>>>(
          validatorsValue,
          (value) => Input.encodeList<ConfigurationProfileValidator,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory ConfigurationProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileArgs(
      applicationId: Input.asInput<String>(map['applicationId']),
      description: Input.asOptionalInput<String>(map['description']),
      kmsKeyIdentifier: Input.asOptionalInput<String>(map['kmsKeyIdentifier']),
      locationUri: Input.asInput<String>(map['locationUri']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      retrievalRoleArn: Input.asOptionalInput<String>(map['retrievalRoleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asOptionalInput<String>(map['type']),
      validators: Input.asOptionalInput<List<ConfigurationProfileValidator>>(
          map['validators']),
    );
  }
}
