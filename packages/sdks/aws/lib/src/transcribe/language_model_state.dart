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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? baseModelName,
    pulumi.Output<LanguageModelInputDataConfig>? inputDataConfig,
    pulumi.Output<String>? languageCode,
    pulumi.Output<String>? modelName,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      baseModelName = pulumi.Input.asOptionalInput<String>(baseModelName),
      inputDataConfig = pulumi.Input.asOptionalInput<LanguageModelInputDataConfig>(inputDataConfig),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      modelName = pulumi.Input.asOptionalInput<String>(modelName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      baseModelName: map['baseModelName'] == null ? null : pulumi.Output.create<String>(map['baseModelName'] as String),
      inputDataConfig: map['inputDataConfig'] == null ? null : pulumi.Output.create<LanguageModelInputDataConfig>(LanguageModelInputDataConfig.fromMap((map['inputDataConfig'] as Map).cast<String, dynamic>())),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      modelName: map['modelName'] == null ? null : pulumi.Output.create<String>(map['modelName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

