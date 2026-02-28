// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_generator_llm_model_settings.dart';
import 'cx_generator_model_parameter.dart';
import 'cx_generator_placeholder.dart';
import 'cx_generator_prompt_text.dart';

/// {@template pulumi_diagflow_cx_generator_cx_generator_args_doc}
/// The set of arguments for CxGenerator.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_generator_cx_generator_args_doc}
class CxGeneratorArgs {
  /// The human-readable name of the generator, unique within the agent.
  final pulumi.Input<String> displayName;

  /// The language to create generators for the following fields:
  /// * Generator.prompt_text.text
  /// If not specified, the agent's default language is used.
  final pulumi.Input<String>? languageCode;

  /// The LLM model settings.
  /// Structure is documented below.
  final pulumi.Input<CxGeneratorLlmModelSettings>? llmModelSettings;

  /// Parameters passed to the LLM to configure its behavior.
  /// Structure is documented below.
  final pulumi.Input<CxGeneratorModelParameter>? modelParameter;

  /// The agent to create a Generator for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;

  /// List of custom placeholders in the prompt text.
  /// Structure is documented below.
  final pulumi.Input<List<CxGeneratorPlaceholder>>? placeholders;

  /// Prompt for the LLM model.
  /// Structure is documented below.
  final pulumi.Input<CxGeneratorPromptText> promptText;

  /// Creates a new [CxGeneratorArgs].
  /// [displayName] The human-readable name of the generator, unique within the agent.
  /// [languageCode] The language to create generators for the following fields:
  /// [llmModelSettings] The LLM model settings.
  /// [modelParameter] Parameters passed to the LLM to configure its behavior.
  /// [parent] The agent to create a Generator for.
  /// [placeholders] List of custom placeholders in the prompt text.
  /// [promptText] Prompt for the LLM model.
  CxGeneratorArgs({
    required String displayName,
    String? languageCode,
    CxGeneratorLlmModelSettings? llmModelSettings,
    CxGeneratorModelParameter? modelParameter,
    String? parent,
    List<CxGeneratorPlaceholder>? placeholders,
    required CxGeneratorPromptText promptText,
  })  : displayName = pulumi.Input.asInput<String>(displayName),
        languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
        llmModelSettings =
            pulumi.Input.asOptionalInput<CxGeneratorLlmModelSettings>(
                llmModelSettings),
        modelParameter =
            pulumi.Input.asOptionalInput<CxGeneratorModelParameter>(
                modelParameter),
        parent = pulumi.Input.asOptionalInput<String>(parent),
        placeholders =
            pulumi.Input.asOptionalInput<List<CxGeneratorPlaceholder>>(
                placeholders),
        promptText = pulumi.Input.asInput<CxGeneratorPromptText>(promptText);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final llmModelSettingsValue = llmModelSettings;
    if (llmModelSettingsValue != null) {
      map['llmModelSettings'] = pulumi.Input.mapOptionalInputValue<
              CxGeneratorLlmModelSettings, Map<String, dynamic>>(
          llmModelSettingsValue, (value) => value.toMap());
    }
    final modelParameterValue = modelParameter;
    if (modelParameterValue != null) {
      map['modelParameter'] = pulumi.Input.mapOptionalInputValue<
          CxGeneratorModelParameter,
          Map<String, dynamic>>(modelParameterValue, (value) => value.toMap());
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final placeholdersValue = placeholders;
    if (placeholdersValue != null) {
      map['placeholders'] = pulumi.Input.mapOptionalInputValue<
              List<CxGeneratorPlaceholder>, List<Map<String, dynamic>>>(
          placeholdersValue,
          (value) => pulumi.Input.encodeList<CxGeneratorPlaceholder,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['promptText'] =
        pulumi.Input.mapInputValue<CxGeneratorPromptText, Map<String, dynamic>>(
            promptText, (value) => value.toMap());
    return map;
  }

  factory CxGeneratorArgs.fromMap(Map<String, dynamic> map) {
    return CxGeneratorArgs(
      displayName: map['displayName'] as String,
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      llmModelSettings: map['llmModelSettings'] == null
          ? null
          : CxGeneratorLlmModelSettings.fromMap(
              (map['llmModelSettings'] as Map).cast<String, dynamic>()),
      modelParameter: map['modelParameter'] == null
          ? null
          : CxGeneratorModelParameter.fromMap(
              (map['modelParameter'] as Map).cast<String, dynamic>()),
      parent: map['parent'] == null ? null : map['parent'] as String,
      placeholders: map['placeholders'] == null
          ? null
          : pulumi.Input.decodeList<CxGeneratorPlaceholder>(
              map['placeholders'],
              (value) => CxGeneratorPlaceholder.fromMap(
                  (value as Map).cast<String, dynamic>())),
      promptText: CxGeneratorPromptText.fromMap(
          (map['promptText'] as Map).cast<String, dynamic>()),
    );
  }
}
