// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_classifier_input_data_config.dart';
import 'document_classifier_output_data_config.dart';
import 'document_classifier_vpc_config.dart';

/// Input properties used for looking up and filtering DocumentClassifier resources.
class DocumentClassifierState {
  /// ARN of the Document Classifier version.
  final pulumi.Input<String>? arn;
  /// The ARN for an IAM Role which allows Comprehend to read the training and testing data.
  final pulumi.Input<String>? dataAccessRoleArn;
  /// Configuration for the training and testing data.
  /// See the `input_data_config` Configuration Block section below.
  final pulumi.Input<DocumentClassifierInputDataConfig>? inputDataConfig;
  /// Two-letter language code for the language.
  /// One of `en`, `es`, `fr`, `it`, `de`, or `pt`.
  final pulumi.Input<String>? languageCode;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
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

  /// Creates a new [DocumentClassifierState].
  /// [arn] ARN of the Document Classifier version.
  /// [dataAccessRoleArn] The ARN for an IAM Role which allows Comprehend to read the training and testing data.
  /// [inputDataConfig] Configuration for the training and testing data.
  /// [languageCode] Two-letter language code for the language.
  /// [mode] The document classification mode.
  /// [modelKmsKeyId] KMS Key used to encrypt trained Document Classifiers.
  /// [name] Name for the Document Classifier.
  /// [outputDataConfig] Configuration for the output results of training.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` Configuration Block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [versionName] Name for the version of the Document Classifier.
  /// [versionNamePrefix] Creates a unique version name beginning with the specified prefix.
  /// [volumeKmsKeyId] KMS Key used to encrypt storage volumes during job processing.
  /// [vpcConfig] Configuration parameters for VPC to contain Document Classifier resources.
  DocumentClassifierState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? dataAccessRoleArn,
    pulumi.Output<DocumentClassifierInputDataConfig>? inputDataConfig,
    pulumi.Output<String>? languageCode,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? modelKmsKeyId,
    pulumi.Output<String>? name,
    pulumi.Output<DocumentClassifierOutputDataConfig>? outputDataConfig,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? versionName,
    pulumi.Output<String>? versionNamePrefix,
    pulumi.Output<String>? volumeKmsKeyId,
    pulumi.Output<DocumentClassifierVpcConfig>? vpcConfig,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      dataAccessRoleArn = pulumi.Input.asOptionalInput<String>(dataAccessRoleArn),
      inputDataConfig = pulumi.Input.asOptionalInput<DocumentClassifierInputDataConfig>(inputDataConfig),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      modelKmsKeyId = pulumi.Input.asOptionalInput<String>(modelKmsKeyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      outputDataConfig = pulumi.Input.asOptionalInput<DocumentClassifierOutputDataConfig>(outputDataConfig),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      versionName = pulumi.Input.asOptionalInput<String>(versionName),
      versionNamePrefix = pulumi.Input.asOptionalInput<String>(versionNamePrefix),
      volumeKmsKeyId = pulumi.Input.asOptionalInput<String>(volumeKmsKeyId),
      vpcConfig = pulumi.Input.asOptionalInput<DocumentClassifierVpcConfig>(vpcConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dataAccessRoleArn': ?dataAccessRoleArn,
      'inputDataConfig': ?pulumi.Input.mapOptionalInputValue<DocumentClassifierInputDataConfig, Map<String, dynamic>>(inputDataConfig, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'mode': ?mode,
      'modelKmsKeyId': ?modelKmsKeyId,
      'name': ?name,
      'outputDataConfig': ?pulumi.Input.mapOptionalInputValue<DocumentClassifierOutputDataConfig, Map<String, dynamic>>(outputDataConfig, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'versionName': ?versionName,
      'versionNamePrefix': ?versionNamePrefix,
      'volumeKmsKeyId': ?volumeKmsKeyId,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<DocumentClassifierVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory DocumentClassifierState.fromMap(Map<String, dynamic> map) {
    return DocumentClassifierState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      dataAccessRoleArn: map['dataAccessRoleArn'] == null ? null : pulumi.Output.create<String>(map['dataAccessRoleArn'] as String),
      inputDataConfig: map['inputDataConfig'] == null ? null : pulumi.Output.create<DocumentClassifierInputDataConfig>(DocumentClassifierInputDataConfig.fromMap((map['inputDataConfig'] as Map).cast<String, dynamic>())),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      modelKmsKeyId: map['modelKmsKeyId'] == null ? null : pulumi.Output.create<String>(map['modelKmsKeyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outputDataConfig: map['outputDataConfig'] == null ? null : pulumi.Output.create<DocumentClassifierOutputDataConfig>(DocumentClassifierOutputDataConfig.fromMap((map['outputDataConfig'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      versionName: map['versionName'] == null ? null : pulumi.Output.create<String>(map['versionName'] as String),
      versionNamePrefix: map['versionNamePrefix'] == null ? null : pulumi.Output.create<String>(map['versionNamePrefix'] as String),
      volumeKmsKeyId: map['volumeKmsKeyId'] == null ? null : pulumi.Output.create<String>(map['volumeKmsKeyId'] as String),
      vpcConfig: map['vpcConfig'] == null ? null : pulumi.Output.create<DocumentClassifierVpcConfig>(DocumentClassifierVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

