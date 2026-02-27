// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../document_classifier_input_data_config/document_classifier_input_data_config.dart';
import '../document_classifier_output_data_config/document_classifier_output_data_config.dart';
import '../document_classifier_vpc_config/document_classifier_vpc_config.dart';

/// The set of arguments for DocumentClassifier.
class DocumentClassifierArgs {
  /// The ARN for an IAM Role which allows Comprehend to read the training and testing data.
  final pulumi.Input<String> dataAccessRoleArn;

  /// Configuration for the training and testing data.
  /// See the `input_data_config` Configuration Block section below.
  final pulumi.Input<DocumentClassifierInputDataConfig> inputDataConfig;

  /// Two-letter language code for the language.
  /// One of `en`, `es`, `fr`, `it`, `de`, or `pt`.
  final pulumi.Input<String> languageCode;

  /// The document classification mode.
  /// One of `MULTI_CLASS` or `MULTI_LABEL`.
  /// `MULTI_CLASS` is also known as "Single Label" in the AWS Console.
  final pulumi.Input<String>? mode;

  /// KMS Key used to encrypt trained Document Classifiers.
  /// Can be a KMS Key ID or a KMS Key ARN.
  final pulumi.Input<String>? modelKmsKeyId;

  /// Name for the Document Classifier.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Configuration for the output results of training.
  /// See the `output_data_config` Configuration Block section below.
  final pulumi.Input<DocumentClassifierOutputDataConfig>? outputDataConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` Configuration Block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Name for the version of the Document Classifier.
  /// Each version must have a unique name within the Document Classifier.
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

  /// KMS Key used to encrypt storage volumes during job processing.
  /// Can be a KMS Key ID or a KMS Key ARN.
  final pulumi.Input<String>? volumeKmsKeyId;

  /// Configuration parameters for VPC to contain Document Classifier resources.
  /// See the `vpc_config` Configuration Block section below.
  final pulumi.Input<DocumentClassifierVpcConfig>? vpcConfig;

  DocumentClassifierArgs({
    required this.dataAccessRoleArn,
    required this.inputDataConfig,
    required this.languageCode,
    this.mode,
    this.modelKmsKeyId,
    this.name,
    this.outputDataConfig,
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
    map['inputDataConfig'] = pulumi.Input.mapInputValue<
        DocumentClassifierInputDataConfig,
        Map<String, dynamic>>(inputDataConfig, (value) => value.toMap());
    map['languageCode'] = languageCode;
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final modelKmsKeyIdValue = modelKmsKeyId;
    if (modelKmsKeyIdValue != null) {
      map['modelKmsKeyId'] = modelKmsKeyIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final outputDataConfigValue = outputDataConfig;
    if (outputDataConfigValue != null) {
      map['outputDataConfig'] = pulumi.Input.mapOptionalInputValue<
              DocumentClassifierOutputDataConfig, Map<String, dynamic>>(
          outputDataConfigValue, (value) => value.toMap());
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
      map['vpcConfig'] = pulumi.Input.mapOptionalInputValue<
          DocumentClassifierVpcConfig,
          Map<String, dynamic>>(vpcConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory DocumentClassifierArgs.fromMap(Map<String, dynamic> map) {
    return DocumentClassifierArgs(
      dataAccessRoleArn: pulumi.Input.asInput<String>(map['dataAccessRoleArn']),
      inputDataConfig: pulumi.Input.asInput<DocumentClassifierInputDataConfig>(
          map['inputDataConfig']),
      languageCode: pulumi.Input.asInput<String>(map['languageCode']),
      mode: pulumi.Input.asOptionalInput<String>(map['mode']),
      modelKmsKeyId: pulumi.Input.asOptionalInput<String>(map['modelKmsKeyId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      outputDataConfig:
          pulumi.Input.asOptionalInput<DocumentClassifierOutputDataConfig>(
              map['outputDataConfig']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      versionName: pulumi.Input.asOptionalInput<String>(map['versionName']),
      versionNamePrefix:
          pulumi.Input.asOptionalInput<String>(map['versionNamePrefix']),
      volumeKmsKeyId:
          pulumi.Input.asOptionalInput<String>(map['volumeKmsKeyId']),
      vpcConfig: pulumi.Input.asOptionalInput<DocumentClassifierVpcConfig>(
          map['vpcConfig']),
    );
  }
}
