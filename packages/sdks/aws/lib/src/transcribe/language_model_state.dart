// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'language_model_input_data_config.dart';

/// Input properties used for looking up and filtering LanguageModel resources.
class LanguageModelState {
  /// ARN of the LanguageModel.
  final pulumi.Input<String?>? arn;
  /// Name of reference base model.
  final pulumi.Input<String?>? baseModelName;
  /// Input data configuration for the LanguageModel. See `inputDataConfig` Block for details.
  final pulumi.Input<LanguageModelInputDataConfig?>? inputDataConfig;
  /// Language code you selected for your language model. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  final pulumi.Input<String?>? languageCode;
  /// Model name.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? modelName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the LanguageModel. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [LanguageModelState].
  /// [arn] ARN of the LanguageModel.
  /// [baseModelName] Name of reference base model.
  /// [inputDataConfig] Input data configuration for the LanguageModel. See `inputDataConfig` Block for details.
  /// [languageCode] Language code you selected for your language model. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  /// [modelName] Model name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the LanguageModel. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  const LanguageModelState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baseModelName: (() { final guardedValue = map['baseModelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputDataConfig: (() { final guardedValue = map['inputDataConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LanguageModelInputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelName: (() { final guardedValue = map['modelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
