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
  /// URI to locate the configuration. You can specify the AWS AppConfig hosted configuration store, Systems Manager (SSM) document, an SSM Parameter Store parameter, or an Amazon S3 object. For the hosted configuration store, specify `hosted`. For an SSM document, specify either the document name in the format `ssm-document://&lt;Document_name&gt;` or the ARN. For a parameter, specify either the parameter name in the format `ssm-parameter://&lt;Parameter_name&gt;` or the ARN. For an Amazon S3 object, specify the URI in the following format: `s3://&lt;bucket&gt;/&lt;objectKey&gt;`.
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
  /// [locationUri] URI to locate the configuration. You can specify the AWS AppConfig hosted configuration store, Systems Manager (SSM) document, an SSM Parameter Store parameter, or an Amazon S3 object. For the hosted configuration store, specify `hosted`. For an SSM document, specify either the document name in the format `ssm-document://&lt;Document_name&gt;` or the ARN. For a parameter, specify either the parameter name in the format `ssm-parameter://&lt;Parameter_name&gt;` or the ARN. For an Amazon S3 object, specify the URI in the following format: `s3://&lt;bucket&gt;/&lt;objectKey&gt;`.
  /// [name] Name for the configuration profile. Must be between 1 and 128 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retrievalRoleArn] ARN of an IAM role with permission to access the configuration at the specified `location_uri`. A retrieval role ARN is not required for configurations stored in the AWS AppConfig `hosted` configuration store. It is required for all other sources that store your configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] Type of configurations contained in the profile. Valid values: `AWS.AppConfig.FeatureFlags` and `AWS.Freeform`.  Default: `AWS.Freeform`.
  /// [validators] Set of methods for validating the configuration. Maximum of 2. See Validator below for more details.
  ConfigurationProfileState({
    this.applicationId,
    this.arn,
    this.configurationProfileId,
    this.description,
    this.kmsKeyIdentifier,
    this.locationUri,
    this.name,
    this.region,
    this.retrievalRoleArn,
    this.tags,
    this.tagsAll,
    this.type,
    this.validators,
  });

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
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationProfileId: (() { final guardedValue = map['configurationProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyIdentifier: (() { final guardedValue = map['kmsKeyIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationUri: (() { final guardedValue = map['locationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retrievalRoleArn: (() { final guardedValue = map['retrievalRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validators: (() { final guardedValue = map['validators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationProfileValidator>(guardedValue, (value) => ConfigurationProfileValidator.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

