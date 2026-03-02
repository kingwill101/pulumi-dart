// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'language_model_input_data_config.dart';

/// Input properties used for looking up and filtering LanguageModel resources.
class LanguageModelState {
  /// ARN of the LanguageModel.
  final pulumi.Input<String>? arn;
  /// Name of reference base model.
  final pulumi.Input<String>? baseModelName;
  /// The input data config for the LanguageModel. See Input Data Config for more details.
  final pulumi.Input<LanguageModelInputDataConfig>? inputDataConfig;
  /// The language code you selected for your language model. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  final pulumi.Input<String>? languageCode;
  /// The model name.
  final pulumi.Input<String>? modelName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [LanguageModelState].
  /// [arn] ARN of the LanguageModel.
  /// [baseModelName] Name of reference base model.
  /// [inputDataConfig] The input data config for the LanguageModel. See Input Data Config for more details.
  /// [languageCode] The language code you selected for your language model. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  /// [modelName] The model name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  LanguageModelState({
    this.arn,
    this.baseModelName,
    this.inputDataConfig,
    this.languageCode,
    this.modelName,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'baseModelName': ?baseModelName,
      'inputDataConfig': ?pulumi.Input.mapOptionalInputValue<LanguageModelInputDataConfig, Map<String, dynamic>>(inputDataConfig, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'modelName': ?modelName,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory LanguageModelState.fromMap(Map<String, dynamic> map) {
    return LanguageModelState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      baseModelName: map['baseModelName'] == null ? null : (map['baseModelName'] as String).input(),
      inputDataConfig: map['inputDataConfig'] == null ? null : (LanguageModelInputDataConfig.fromMap((map['inputDataConfig'] as Map).cast<String, dynamic>())).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode'] as String).input(),
      modelName: map['modelName'] == null ? null : (map['modelName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

