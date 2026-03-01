// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_classifier_input_data_config.dart';
import 'document_classifier_output_data_config.dart';
import 'document_classifier_vpc_config.dart';

/// {@template pulumi_comprehend_document_classifier_document_classifier_args_doc}
/// The set of arguments for DocumentClassifier.
/// {@endtemplate}
/// {@macro pulumi_comprehend_document_classifier_document_classifier_args_doc}
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

  /// Creates a new [DocumentClassifierArgs].
  /// [dataAccessRoleArn] The ARN for an IAM Role which allows Comprehend to read the training and testing data.
  /// [inputDataConfig] Configuration for the training and testing data.
  /// [languageCode] Two-letter language code for the language.
  /// [mode] The document classification mode.
  /// [modelKmsKeyId] KMS Key used to encrypt trained Document Classifiers.
  /// [name] Name for the Document Classifier.
  /// [outputDataConfig] Configuration for the output results of training.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` Configuration Block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [versionName] Name for the version of the Document Classifier.
  /// [versionNamePrefix] Creates a unique version name beginning with the specified prefix.
  /// [volumeKmsKeyId] KMS Key used to encrypt storage volumes during job processing.
  /// [vpcConfig] Configuration parameters for VPC to contain Document Classifier resources.
  DocumentClassifierArgs({
    required String dataAccessRoleArn,
    required DocumentClassifierInputDataConfig inputDataConfig,
    required String languageCode,
    String? mode,
    String? modelKmsKeyId,
    String? name,
    DocumentClassifierOutputDataConfig? outputDataConfig,
    String? region,
    Map<String, String>? tags,
    String? versionName,
    String? versionNamePrefix,
    String? volumeKmsKeyId,
    DocumentClassifierVpcConfig? vpcConfig,
  }) : dataAccessRoleArn = pulumi.Input.asInput<String>(dataAccessRoleArn),
       inputDataConfig = pulumi
           .Input.asInput<DocumentClassifierInputDataConfig>(inputDataConfig),
       languageCode = pulumi.Input.asInput<String>(languageCode),
       mode = pulumi.Input.asOptionalInput<String>(mode),
       modelKmsKeyId = pulumi.Input.asOptionalInput<String>(modelKmsKeyId),
       name = pulumi.Input.asOptionalInput<String>(name),
       outputDataConfig =
           pulumi.Input.asOptionalInput<DocumentClassifierOutputDataConfig>(
             outputDataConfig,
           ),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       versionName = pulumi.Input.asOptionalInput<String>(versionName),
       versionNamePrefix = pulumi.Input.asOptionalInput<String>(
         versionNamePrefix,
       ),
       volumeKmsKeyId = pulumi.Input.asOptionalInput<String>(volumeKmsKeyId),
       vpcConfig = pulumi.Input.asOptionalInput<DocumentClassifierVpcConfig>(
         vpcConfig,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAccessRoleArn': dataAccessRoleArn,
      'inputDataConfig':
          pulumi.Input.mapInputValue<
            DocumentClassifierInputDataConfig,
            Map<String, dynamic>
          >(inputDataConfig, (value) => value.toMap()),
      'languageCode': languageCode,
      'mode': ?mode,
      'modelKmsKeyId': ?modelKmsKeyId,
      'name': ?name,
      'outputDataConfig':
          ?pulumi.Input.mapOptionalInputValue<
            DocumentClassifierOutputDataConfig,
            Map<String, dynamic>
          >(outputDataConfig, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'versionName': ?versionName,
      'versionNamePrefix': ?versionNamePrefix,
      'volumeKmsKeyId': ?volumeKmsKeyId,
      'vpcConfig':
          ?pulumi.Input.mapOptionalInputValue<
            DocumentClassifierVpcConfig,
            Map<String, dynamic>
          >(vpcConfig, (value) => value.toMap()),
    };
  }

  factory DocumentClassifierArgs.fromMap(Map<String, dynamic> map) {
    return DocumentClassifierArgs(
      dataAccessRoleArn: map['dataAccessRoleArn'] as String,
      inputDataConfig: DocumentClassifierInputDataConfig.fromMap(
        (map['inputDataConfig'] as Map).cast<String, dynamic>(),
      ),
      languageCode: map['languageCode'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      modelKmsKeyId: map['modelKmsKeyId'] == null
          ? null
          : map['modelKmsKeyId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      outputDataConfig: map['outputDataConfig'] == null
          ? null
          : DocumentClassifierOutputDataConfig.fromMap(
              (map['outputDataConfig'] as Map).cast<String, dynamic>(),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      versionName: map['versionName'] == null
          ? null
          : map['versionName'] as String,
      versionNamePrefix: map['versionNamePrefix'] == null
          ? null
          : map['versionNamePrefix'] as String,
      volumeKmsKeyId: map['volumeKmsKeyId'] == null
          ? null
          : map['volumeKmsKeyId'] as String,
      vpcConfig: map['vpcConfig'] == null
          ? null
          : DocumentClassifierVpcConfig.fromMap(
              (map['vpcConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
