// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_recognizer_input_data_config.dart';
import 'entity_recognizer_vpc_config.dart';

/// {@template pulumi_comprehend_entity_recognizer_entity_recognizer_args_doc}
/// The set of arguments for EntityRecognizer.
/// {@endtemplate}
/// {@macro pulumi_comprehend_entity_recognizer_entity_recognizer_args_doc}
class EntityRecognizerArgs {
  /// The ARN for an IAM Role which allows Comprehend to read the training and testing data.
  final pulumi.Input<String> dataAccessRoleArn;
  /// Configuration for the training and testing data.
  /// See the `inputDataConfig` Configuration Block section below.
  final pulumi.Input<EntityRecognizerInputDataConfig> inputDataConfig;
  /// Two-letter language code for the language.
  /// One of `en`, `es`, `fr`, `it`, `de`, or `pt`.
  final pulumi.Input<String> languageCode;
  /// The ID or ARN of a KMS Key used to encrypt trained Entity Recognizers.
  final pulumi.Input<String?>? modelKmsKeyId;
  /// Name for the Entity Recognizer.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` Configuration Block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Name for the version of the Entity Recognizer.
  /// Each version must have a unique name within the Entity Recognizer.
  /// If omitted, the provider will assign a random, unique version name.
  /// If explicitly set to `""`, no version name will be set.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  /// Conflicts with `versionNamePrefix`.
  final pulumi.Input<String?>? versionName;
  /// Creates a unique version name beginning with the specified prefix.
  /// Has a maximum length of 37 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  /// Conflicts with `versionName`.
  final pulumi.Input<String?>? versionNamePrefix;
  /// ID or ARN of a KMS Key used to encrypt storage volumes during job processing.
  final pulumi.Input<String?>? volumeKmsKeyId;
  /// Configuration parameters for VPC to contain Entity Recognizer resources.
  /// See the `vpcConfig` Configuration Block section below.
  final pulumi.Input<EntityRecognizerVpcConfig?>? vpcConfig;

  /// Creates a new [EntityRecognizerArgs].
  /// [dataAccessRoleArn] The ARN for an IAM Role which allows Comprehend to read the training and testing data.
  /// [inputDataConfig] Configuration for the training and testing data.
  /// [languageCode] Two-letter language code for the language.
  /// [modelKmsKeyId] The ID or ARN of a KMS Key used to encrypt trained Entity Recognizers.
  /// [name] Name for the Entity Recognizer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` Configuration Block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [versionName] Name for the version of the Entity Recognizer.
  /// [versionNamePrefix] Creates a unique version name beginning with the specified prefix.
  /// [volumeKmsKeyId] ID or ARN of a KMS Key used to encrypt storage volumes during job processing.
  /// [vpcConfig] Configuration parameters for VPC to contain Entity Recognizer resources.
  const EntityRecognizerArgs({
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
    return <String, dynamic>{
      'dataAccessRoleArn': dataAccessRoleArn,
      'inputDataConfig': pulumi.Input.mapInputValue<EntityRecognizerInputDataConfig, Map<String, dynamic>>(inputDataConfig, (value) => value.toMap()),
      'languageCode': languageCode,
      'modelKmsKeyId': ?modelKmsKeyId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'versionName': ?versionName,
      'versionNamePrefix': ?versionNamePrefix,
      'volumeKmsKeyId': ?volumeKmsKeyId,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<EntityRecognizerVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory EntityRecognizerArgs.fromMap(Map<String, dynamic> map) {
    return EntityRecognizerArgs(
      dataAccessRoleArn: pulumi.Input.fromValue(map['dataAccessRoleArn'] as String),
      inputDataConfig: pulumi.Input.fromValue(EntityRecognizerInputDataConfig.fromMap((map['inputDataConfig']! as Map).cast<String, dynamic>())),
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
      modelKmsKeyId: (() { final guardedValue = map['modelKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      versionName: (() { final guardedValue = map['versionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionNamePrefix: (() { final guardedValue = map['versionNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeKmsKeyId: (() { final guardedValue = map['volumeKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityRecognizerVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
