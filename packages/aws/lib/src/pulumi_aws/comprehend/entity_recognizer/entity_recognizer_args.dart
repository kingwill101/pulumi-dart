// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../entity_recognizer_input_data_config/entity_recognizer_input_data_config.dart';
import '../entity_recognizer_vpc_config/entity_recognizer_vpc_config.dart';

/// The set of arguments for EntityRecognizer.
class EntityRecognizerArgs {
  /// The ARN for an IAM Role which allows Comprehend to read the training and testing data.
  final Input<String> dataAccessRoleArn;

  /// Configuration for the training and testing data.
  /// See the `input_data_config` Configuration Block section below.
  final Input<EntityRecognizerInputDataConfig> inputDataConfig;

  /// Two-letter language code for the language.
  /// One of `en`, `es`, `fr`, `it`, `de`, or `pt`.
  final Input<String> languageCode;

  /// The ID or ARN of a KMS Key used to encrypt trained Entity Recognizers.
  final Input<String>? modelKmsKeyId;

  /// Name for the Entity Recognizer.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` Configuration Block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Name for the version of the Entity Recognizer.
  /// Each version must have a unique name within the Entity Recognizer.
  /// If omitted, the provider will assign a random, unique version name.
  /// If explicitly set to `""`, no version name will be set.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  /// Conflicts with `version_name_prefix`.
  final Input<String>? versionName;

  /// Creates a unique version name beginning with the specified prefix.
  /// Has a maximum length of 37 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  /// Conflicts with `version_name`.
  final Input<String>? versionNamePrefix;

  /// ID or ARN of a KMS Key used to encrypt storage volumes during job processing.
  final Input<String>? volumeKmsKeyId;

  /// Configuration parameters for VPC to contain Entity Recognizer resources.
  /// See the `vpc_config` Configuration Block section below.
  final Input<EntityRecognizerVpcConfig>? vpcConfig;

  EntityRecognizerArgs({
    required this.dataAccessRoleArn,
    required this.inputDataConfig,
    required this.languageCode,
    this.modelKmsKeyId,
    this.name,
    this.region,
    this.tags,
    this.versionName,
    this.versionNamePrefix,
    this.volumeKmsKeyId,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataAccessRoleArn'] = dataAccessRoleArn;
    map['inputDataConfig'] = Input.mapInputValue<
        EntityRecognizerInputDataConfig,
        Map<String, dynamic>>(inputDataConfig, (value) => value.toMap());
    map['languageCode'] = languageCode;
    final modelKmsKeyIdValue = modelKmsKeyId;
    if (modelKmsKeyIdValue != null) {
      map['modelKmsKeyId'] = modelKmsKeyIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final versionNameValue = versionName;
    if (versionNameValue != null) {
      map['versionName'] = versionNameValue;
    }
    final versionNamePrefixValue = versionNamePrefix;
    if (versionNamePrefixValue != null) {
      map['versionNamePrefix'] = versionNamePrefixValue;
    }
    final volumeKmsKeyIdValue = volumeKmsKeyId;
    if (volumeKmsKeyIdValue != null) {
      map['volumeKmsKeyId'] = volumeKmsKeyIdValue;
    }
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] = Input.mapOptionalInputValue<EntityRecognizerVpcConfig,
          Map<String, dynamic>>(vpcConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory EntityRecognizerArgs.fromMap(Map<String, dynamic> map) {
    return EntityRecognizerArgs(
      dataAccessRoleArn: Input.asInput<String>(map['dataAccessRoleArn']),
      inputDataConfig: Input.asInput<EntityRecognizerInputDataConfig>(
          map['inputDataConfig']),
      languageCode: Input.asInput<String>(map['languageCode']),
      modelKmsKeyId: Input.asOptionalInput<String>(map['modelKmsKeyId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      versionName: Input.asOptionalInput<String>(map['versionName']),
      versionNamePrefix:
          Input.asOptionalInput<String>(map['versionNamePrefix']),
      volumeKmsKeyId: Input.asOptionalInput<String>(map['volumeKmsKeyId']),
      vpcConfig:
          Input.asOptionalInput<EntityRecognizerVpcConfig>(map['vpcConfig']),
    );
  }
}
