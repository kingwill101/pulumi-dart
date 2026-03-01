// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_profile_validator.dart';

/// Input properties used for looking up and filtering ConfigurationProfile resources.
class ConfigurationProfileState {
  /// Application ID. Must be between 4 and 7 characters in length.
  final pulumi.Input<String>? applicationId;
  /// ARN of the AppConfig Configuration Profile.
  final pulumi.Input<String>? arn;
  /// The configuration profile ID.
  final pulumi.Input<String>? configurationProfileId;
  /// Description of the configuration profile. Can be at most 1024 characters.
  final pulumi.Input<String>? description;
  /// The identifier for an Key Management Service key to encrypt new configuration data versions in the AppConfig hosted configuration store. This attribute is only used for hosted configuration types. The identifier can be an KMS key ID, alias, or the Amazon Resource Name (ARN) of the key ID or alias.
  final pulumi.Input<String>? kmsKeyIdentifier;
  /// URI to locate the configuration. You can specify the AWS AppConfig hosted configuration store, Systems Manager (SSM) document, an SSM Parameter Store parameter, or an Amazon S3 object. For the hosted configuration store, specify `hosted`. For an SSM document, specify either the document name in the format `ssm-document://<Document_name>` or the ARN. For a parameter, specify either the parameter name in the format `ssm-parameter://<Parameter_name>` or the ARN. For an Amazon S3 object, specify the URI in the following format: `s3://<bucket>/<objectKey>`.
  final pulumi.Input<String>? locationUri;
  /// Name for the configuration profile. Must be between 1 and 128 characters in length.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of an IAM role with permission to access the configuration at the specified `location_uri`. A retrieval role ARN is not required for configurations stored in the AWS AppConfig `hosted` configuration store. It is required for all other sources that store your configuration.
  final pulumi.Input<String>? retrievalRoleArn;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Type of configurations contained in the profile. Valid values: `AWS.AppConfig.FeatureFlags` and `AWS.Freeform`.  Default: `AWS.Freeform`.
  final pulumi.Input<String>? type;
  /// Set of methods for validating the configuration. Maximum of 2. See Validator below for more details.
  final pulumi.Input<List<ConfigurationProfileValidator>>? validators;

  /// Creates a new [ConfigurationProfileState].
  /// [applicationId] Application ID. Must be between 4 and 7 characters in length.
  /// [arn] ARN of the AppConfig Configuration Profile.
  /// [configurationProfileId] The configuration profile ID.
  /// [description] Description of the configuration profile. Can be at most 1024 characters.
  /// [kmsKeyIdentifier] The identifier for an Key Management Service key to encrypt new configuration data versions in the AppConfig hosted configuration store. This attribute is only used for hosted configuration types. The identifier can be an KMS key ID, alias, or the Amazon Resource Name (ARN) of the key ID or alias.
  /// [locationUri] URI to locate the configuration. You can specify the AWS AppConfig hosted configuration store, Systems Manager (SSM) document, an SSM Parameter Store parameter, or an Amazon S3 object. For the hosted configuration store, specify `hosted`. For an SSM document, specify either the document name in the format `ssm-document://<Document_name>` or the ARN. For a parameter, specify either the parameter name in the format `ssm-parameter://<Parameter_name>` or the ARN. For an Amazon S3 object, specify the URI in the following format: `s3://<bucket>/<objectKey>`.
  /// [name] Name for the configuration profile. Must be between 1 and 128 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retrievalRoleArn] ARN of an IAM role with permission to access the configuration at the specified `location_uri`. A retrieval role ARN is not required for configurations stored in the AWS AppConfig `hosted` configuration store. It is required for all other sources that store your configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] Type of configurations contained in the profile. Valid values: `AWS.AppConfig.FeatureFlags` and `AWS.Freeform`.  Default: `AWS.Freeform`.
  /// [validators] Set of methods for validating the configuration. Maximum of 2. See Validator below for more details.
  ConfigurationProfileState({
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? configurationProfileId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? kmsKeyIdentifier,
    pulumi.Output<String>? locationUri,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? retrievalRoleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
    pulumi.Output<List<ConfigurationProfileValidator>>? validators,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      configurationProfileId = pulumi.Input.asOptionalInput<String>(configurationProfileId),
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsKeyIdentifier = pulumi.Input.asOptionalInput<String>(kmsKeyIdentifier),
      locationUri = pulumi.Input.asOptionalInput<String>(locationUri),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      retrievalRoleArn = pulumi.Input.asOptionalInput<String>(retrievalRoleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type),
      validators = pulumi.Input.asOptionalInput<List<ConfigurationProfileValidator>>(validators);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'arn': ?arn,
      'configurationProfileId': ?configurationProfileId,
      'description': ?description,
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'locationUri': ?locationUri,
      'name': ?name,
      'region': ?region,
      'retrievalRoleArn': ?retrievalRoleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'validators': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationProfileValidator>, List<Map<String, dynamic>>>(validators, (value) => pulumi.Input.encodeList<ConfigurationProfileValidator, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConfigurationProfileState.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileState(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      configurationProfileId: map['configurationProfileId'] == null ? null : pulumi.Output.create<String>(map['configurationProfileId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kmsKeyIdentifier: map['kmsKeyIdentifier'] == null ? null : pulumi.Output.create<String>(map['kmsKeyIdentifier'] as String),
      locationUri: map['locationUri'] == null ? null : pulumi.Output.create<String>(map['locationUri'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      retrievalRoleArn: map['retrievalRoleArn'] == null ? null : pulumi.Output.create<String>(map['retrievalRoleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      validators: map['validators'] == null ? null : pulumi.Output.create<List<ConfigurationProfileValidator>>(pulumi.Input.decodeList<ConfigurationProfileValidator>(map['validators'], (value) => ConfigurationProfileValidator.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

