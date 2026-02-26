// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../language_model_input_data_config/language_model_input_data_config.dart';

/// The set of arguments for LanguageModel.
class LanguageModelArgs {
  /// Name of reference base model.
  final Input<String> baseModelName;

  /// The input data config for the LanguageModel. See Input Data Config for more details.
  final Input<LanguageModelInputDataConfig> inputDataConfig;

  /// The language code you selected for your language model. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  final Input<String> languageCode;

  /// The model name.
  final Input<String> modelName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<Map<String, String>>? tags;

  LanguageModelArgs({
    required this.baseModelName,
    required this.inputDataConfig,
    required this.languageCode,
    required this.modelName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseModelName'] = baseModelName;
    map['inputDataConfig'] =
        Input.mapInputValue<LanguageModelInputDataConfig, Map<String, dynamic>>(
            inputDataConfig, (value) => value.toMap());
    map['languageCode'] = languageCode;
    map['modelName'] = modelName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LanguageModelArgs.fromMap(Map<String, dynamic> map) {
    return LanguageModelArgs(
      baseModelName: Input.asInput<String>(map['baseModelName']),
      inputDataConfig:
          Input.asInput<LanguageModelInputDataConfig>(map['inputDataConfig']),
      languageCode: Input.asInput<String>(map['languageCode']),
      modelName: Input.asInput<String>(map['modelName']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
