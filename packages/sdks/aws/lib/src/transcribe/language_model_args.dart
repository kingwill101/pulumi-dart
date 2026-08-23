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
  /// Input data configuration for the LanguageModel. See `inputDataConfig` Block for details.
  final pulumi.Input<LanguageModelInputDataConfig> inputDataConfig;
  /// Language code you selected for your language model. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  final pulumi.Input<String> languageCode;
  /// Model name.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> modelName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the LanguageModel. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LanguageModelArgs].
  /// [baseModelName] Name of reference base model.
  /// [inputDataConfig] Input data configuration for the LanguageModel. See `inputDataConfig` Block for details.
  /// [languageCode] Language code you selected for your language model. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  /// [modelName] Model name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the LanguageModel. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const LanguageModelArgs({
    required this.baseModelName,
    required this.inputDataConfig,
    required this.languageCode,
    required this.modelName,
    this.region,
    this.tags,
  });

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
      baseModelName: pulumi.Input.fromValue(map['baseModelName'] as String),
      inputDataConfig: pulumi.Input.fromValue(LanguageModelInputDataConfig.fromMap((map['inputDataConfig']! as Map).cast<String, dynamic>())),
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
      modelName: pulumi.Input.fromValue(map['modelName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
