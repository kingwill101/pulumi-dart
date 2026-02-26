// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cx_generator_llm_model_settings/cx_generator_llm_model_settings.dart';
import '../cx_generator_model_parameter/cx_generator_model_parameter.dart';
import '../cx_generator_placeholder/cx_generator_placeholder.dart';
import '../cx_generator_prompt_text/cx_generator_prompt_text.dart';

/// The set of arguments for CxGenerator.
class CxGeneratorArgs {
  /// The human-readable name of the generator, unique within the agent.
  final Input<String> displayName;

  /// The language to create generators for the following fields:
  /// * Generator.prompt_text.text
  /// If not specified, the agent's default language is used.
  final Input<String>? languageCode;

  /// The LLM model settings.
  /// Structure is documented below.
  final Input<CxGeneratorLlmModelSettings>? llmModelSettings;

  /// Parameters passed to the LLM to configure its behavior.
  /// Structure is documented below.
  final Input<CxGeneratorModelParameter>? modelParameter;

  /// The agent to create a Generator for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final Input<String>? parent;

  /// List of custom placeholders in the prompt text.
  /// Structure is documented below.
  final Input<List<CxGeneratorPlaceholder>>? placeholders;

  /// Prompt for the LLM model.
  /// Structure is documented below.
  final Input<CxGeneratorPromptText> promptText;

  CxGeneratorArgs({
    required this.displayName,
    this.languageCode,
    this.llmModelSettings,
    this.modelParameter,
    this.parent,
    this.placeholders,
    required this.promptText,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final llmModelSettingsValue = llmModelSettings;
    if (llmModelSettingsValue != null) {
      map['llmModelSettings'] = Input.mapOptionalInputValue<
              CxGeneratorLlmModelSettings, Map<String, dynamic>>(
          llmModelSettingsValue, (value) => value.toMap());
    }
    final modelParameterValue = modelParameter;
    if (modelParameterValue != null) {
      map['modelParameter'] = Input.mapOptionalInputValue<
          CxGeneratorModelParameter,
          Map<String, dynamic>>(modelParameterValue, (value) => value.toMap());
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final placeholdersValue = placeholders;
    if (placeholdersValue != null) {
      map['placeholders'] = Input.mapOptionalInputValue<
              List<CxGeneratorPlaceholder>, List<Map<String, dynamic>>>(
          placeholdersValue,
          (value) =>
              Input.encodeList<CxGeneratorPlaceholder, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['promptText'] =
        Input.mapInputValue<CxGeneratorPromptText, Map<String, dynamic>>(
            promptText, (value) => value.toMap());
    return map;
  }

  factory CxGeneratorArgs.fromMap(Map<String, dynamic> map) {
    return CxGeneratorArgs(
      displayName: Input.asInput<String>(map['displayName']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      llmModelSettings: Input.asOptionalInput<CxGeneratorLlmModelSettings>(
          map['llmModelSettings']),
      modelParameter: Input.asOptionalInput<CxGeneratorModelParameter>(
          map['modelParameter']),
      parent: Input.asOptionalInput<String>(map['parent']),
      placeholders: Input.asOptionalInput<List<CxGeneratorPlaceholder>>(
          map['placeholders']),
      promptText: Input.asInput<CxGeneratorPromptText>(map['promptText']),
    );
  }
}
