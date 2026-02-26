// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cx_generative_settings_fallback_settings/cx_generative_settings_fallback_settings.dart';
import '../cx_generative_settings_generative_safety_settings/cx_generative_settings_generative_safety_settings.dart';
import '../cx_generative_settings_knowledge_connector_settings/cx_generative_settings_knowledge_connector_settings.dart';
import '../cx_generative_settings_llm_model_settings/cx_generative_settings_llm_model_settings.dart';

/// The set of arguments for CxGenerativeSettings.
class CxGenerativeSettingsArgs {
  /// Settings for Generative Fallback.
  /// Structure is documented below.
  final Input<CxGenerativeSettingsFallbackSettings>? fallbackSettings;

  /// Settings for Generative Safety.
  /// Structure is documented below.
  final Input<CxGenerativeSettingsGenerativeSafetySettings>?
      generativeSafetySettings;

  /// Settings for knowledge connector.
  /// Structure is documented below.
  final Input<CxGenerativeSettingsKnowledgeConnectorSettings>?
      knowledgeConnectorSettings;

  /// Language for this settings.
  final Input<String> languageCode;

  /// LLM model settings.
  /// Structure is documented below.
  final Input<CxGenerativeSettingsLlmModelSettings>? llmModelSettings;

  /// The agent to create a flow for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final Input<String>? parent;

  CxGenerativeSettingsArgs({
    this.fallbackSettings,
    this.generativeSafetySettings,
    this.knowledgeConnectorSettings,
    required this.languageCode,
    this.llmModelSettings,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fallbackSettingsValue = fallbackSettings;
    if (fallbackSettingsValue != null) {
      map['fallbackSettings'] = Input.mapOptionalInputValue<
              CxGenerativeSettingsFallbackSettings, Map<String, dynamic>>(
          fallbackSettingsValue, (value) => value.toMap());
    }
    final generativeSafetySettingsValue = generativeSafetySettings;
    if (generativeSafetySettingsValue != null) {
      map['generativeSafetySettings'] = Input.mapOptionalInputValue<
              CxGenerativeSettingsGenerativeSafetySettings,
              Map<String, dynamic>>(
          generativeSafetySettingsValue, (value) => value.toMap());
    }
    final knowledgeConnectorSettingsValue = knowledgeConnectorSettings;
    if (knowledgeConnectorSettingsValue != null) {
      map['knowledgeConnectorSettings'] = Input.mapOptionalInputValue<
              CxGenerativeSettingsKnowledgeConnectorSettings,
              Map<String, dynamic>>(
          knowledgeConnectorSettingsValue, (value) => value.toMap());
    }
    map['languageCode'] = languageCode;
    final llmModelSettingsValue = llmModelSettings;
    if (llmModelSettingsValue != null) {
      map['llmModelSettings'] = Input.mapOptionalInputValue<
              CxGenerativeSettingsLlmModelSettings, Map<String, dynamic>>(
          llmModelSettingsValue, (value) => value.toMap());
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    return map;
  }

  factory CxGenerativeSettingsArgs.fromMap(Map<String, dynamic> map) {
    return CxGenerativeSettingsArgs(
      fallbackSettings:
          Input.asOptionalInput<CxGenerativeSettingsFallbackSettings>(
              map['fallbackSettings']),
      generativeSafetySettings:
          Input.asOptionalInput<CxGenerativeSettingsGenerativeSafetySettings>(
              map['generativeSafetySettings']),
      knowledgeConnectorSettings:
          Input.asOptionalInput<CxGenerativeSettingsKnowledgeConnectorSettings>(
              map['knowledgeConnectorSettings']),
      languageCode: Input.asInput<String>(map['languageCode']),
      llmModelSettings:
          Input.asOptionalInput<CxGenerativeSettingsLlmModelSettings>(
              map['llmModelSettings']),
      parent: Input.asOptionalInput<String>(map['parent']),
    );
  }
}
