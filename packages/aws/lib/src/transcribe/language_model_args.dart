// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'language_model_input_data_config.dart';

/// {@template pulumi_transcribe_language_model_language_model_args_doc}
/// The set of arguments for LanguageModel.
/// {@endtemplate}
/// {@macro pulumi_transcribe_language_model_language_model_args_doc}
class LanguageModelArgs {
  /// Name of reference base model.
  final pulumi.Input<String> baseModelName;
  /// The input data config for the LanguageModel. See Input Data Config for more details.
  final pulumi.Input<LanguageModelInputDataConfig> inputDataConfig;
  /// The language code you selected for your language model. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  final pulumi.Input<String> languageCode;
  /// The model name.
  final pulumi.Input<String> modelName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LanguageModelArgs].
  /// [baseModelName] Name of reference base model.
  /// [inputDataConfig] The input data config for the LanguageModel. See Input Data Config for more details.
  /// [languageCode] The language code you selected for your language model. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  /// [modelName] The model name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  LanguageModelArgs({
    required String baseModelName,
    required LanguageModelInputDataConfig inputDataConfig,
    required String languageCode,
    required String modelName,
    String? region,
    Map<String, String>? tags,
  }) :
      baseModelName = pulumi.Input.asInput<String>(baseModelName),
      inputDataConfig = pulumi.Input.asInput<LanguageModelInputDataConfig>(inputDataConfig),
      languageCode = pulumi.Input.asInput<String>(languageCode),
      modelName = pulumi.Input.asInput<String>(modelName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseModelName': baseModelName,
      'inputDataConfig': pulumi.Input.mapInputValue<LanguageModelInputDataConfig, Map<String, dynamic>>(inputDataConfig, (value) => value.toMap()),
      'languageCode': languageCode,
      'modelName': modelName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory LanguageModelArgs.fromMap(Map<String, dynamic> map) {
    return LanguageModelArgs(
      baseModelName: map['baseModelName'] as String,
      inputDataConfig: LanguageModelInputDataConfig.fromMap((map['inputDataConfig'] as Map).cast<String, dynamic>()),
      languageCode: map['languageCode'] as String,
      modelName: map['modelName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

