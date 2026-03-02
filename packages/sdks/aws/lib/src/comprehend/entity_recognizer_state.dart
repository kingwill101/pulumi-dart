// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_recognizer_input_data_config.dart';
import 'entity_recognizer_vpc_config.dart';

/// Input properties used for looking up and filtering EntityRecognizer resources.
class EntityRecognizerState {
  /// ARN of the Entity Recognizer version.
  final pulumi.Input<String>? arn;
  /// The ARN for an IAM Role which allows Comprehend to read the training and testing data.
  final pulumi.Input<String>? dataAccessRoleArn;
  /// Configuration for the training and testing data.
  /// See the `input_data_config` Configuration Block section below.
  final pulumi.Input<EntityRecognizerInputDataConfig>? inputDataConfig;
  /// Two-letter language code for the language.
  /// One of `en`, `es`, `fr`, `it`, `de`, or `pt`.
  final pulumi.Input<String>? languageCode;
  /// The ID or ARN of a KMS Key used to encrypt trained Entity Recognizers.
  final pulumi.Input<String>? modelKmsKeyId;
  /// Name for the Entity Recognizer.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` Configuration Block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Name for the version of the Entity Recognizer.
  /// Each version must have a unique name within the Entity Recognizer.
  /// If omitted, the provider will assign a random, unique version name.
  /// If explicitly set to `""`, no version name will be set.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  /// Conflicts with `version_name_prefix`.
  final pulumi.Input<String>? versionName;
  /// Creates a unique version name beginning with the specified prefix.
  /// Has a maximum length of 37 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  /// Conflicts with `version_name`.
  final pulumi.Input<String>? versionNamePrefix;
  /// ID or ARN of a KMS Key used to encrypt storage volumes during job processing.
  final pulumi.Input<String>? volumeKmsKeyId;
  /// Configuration parameters for VPC to contain Entity Recognizer resources.
  /// See the `vpc_config` Configuration Block section below.
  final pulumi.Input<EntityRecognizerVpcConfig>? vpcConfig;

  /// Creates a new [EntityRecognizerState].
  /// [arn] ARN of the Entity Recognizer version.
  /// [dataAccessRoleArn] The ARN for an IAM Role which allows Comprehend to read the training and testing data.
  /// [inputDataConfig] Configuration for the training and testing data.
  /// [languageCode] Two-letter language code for the language.
  /// [modelKmsKeyId] The ID or ARN of a KMS Key used to encrypt trained Entity Recognizers.
  /// [name] Name for the Entity Recognizer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` Configuration Block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [versionName] Name for the version of the Entity Recognizer.
  /// [versionNamePrefix] Creates a unique version name beginning with the specified prefix.
  /// [volumeKmsKeyId] ID or ARN of a KMS Key used to encrypt storage volumes during job processing.
  /// [vpcConfig] Configuration parameters for VPC to contain Entity Recognizer resources.
  EntityRecognizerState({
    this.arn,
    this.dataAccessRoleArn,
    this.inputDataConfig,
    this.languageCode,
    this.modelKmsKeyId,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.versionName,
    this.versionNamePrefix,
    this.volumeKmsKeyId,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dataAccessRoleArn': ?dataAccessRoleArn,
      'inputDataConfig': ?pulumi.Input.mapOptionalInputValue<EntityRecognizerInputDataConfig, Map<String, dynamic>>(inputDataConfig, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'modelKmsKeyId': ?modelKmsKeyId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'versionName': ?versionName,
      'versionNamePrefix': ?versionNamePrefix,
      'volumeKmsKeyId': ?volumeKmsKeyId,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<EntityRecognizerVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory EntityRecognizerState.fromMap(Map<String, dynamic> map) {
    return EntityRecognizerState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      dataAccessRoleArn: map['dataAccessRoleArn'] == null ? null : (map['dataAccessRoleArn'] as String).input(),
      inputDataConfig: map['inputDataConfig'] == null ? null : (EntityRecognizerInputDataConfig.fromMap((map['inputDataConfig'] as Map).cast<String, dynamic>())).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode'] as String).input(),
      modelKmsKeyId: map['modelKmsKeyId'] == null ? null : (map['modelKmsKeyId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      versionName: map['versionName'] == null ? null : (map['versionName'] as String).input(),
      versionNamePrefix: map['versionNamePrefix'] == null ? null : (map['versionNamePrefix'] as String).input(),
      volumeKmsKeyId: map['volumeKmsKeyId'] == null ? null : (map['volumeKmsKeyId'] as String).input(),
      vpcConfig: map['vpcConfig'] == null ? null : (EntityRecognizerVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

