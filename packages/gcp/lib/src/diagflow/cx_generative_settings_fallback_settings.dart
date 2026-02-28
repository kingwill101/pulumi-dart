// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_generative_settings_fallback_settings_prompt_template.dart';

class CxGenerativeSettingsFallbackSettings {
  /// Stored prompts that can be selected, for example default templates like "conservative" or "chatty", or user defined ones.
  /// Structure is documented below.
  final List<CxGenerativeSettingsFallbackSettingsPromptTemplate>?
      promptTemplates;

  /// Display name of the selected prompt.
  final String? selectedPrompt;

  /// Creates a new [CxGenerativeSettingsFallbackSettings].
  /// [promptTemplates] Stored prompts that can be selected, for example default templates like "conservative" or "chatty", or user defined ones.
  /// [selectedPrompt] Display name of the selected prompt.
  CxGenerativeSettingsFallbackSettings({
    this.promptTemplates,
    this.selectedPrompt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final promptTemplatesValue = promptTemplates;
    if (promptTemplatesValue != null) {
      map['promptTemplates'] = pulumi.Input.encodeList<
          CxGenerativeSettingsFallbackSettingsPromptTemplate,
          Map<String, dynamic>>(promptTemplatesValue, (value) => value.toMap());
    }
    final selectedPromptValue = selectedPrompt;
    if (selectedPromptValue != null) {
      map['selectedPrompt'] = selectedPromptValue;
    }
    return map;
  }

  factory CxGenerativeSettingsFallbackSettings.fromMap(
      Map<String, dynamic> map) {
    return CxGenerativeSettingsFallbackSettings(
      promptTemplates: map['promptTemplates'] == null
          ? null
          : pulumi.Input.decodeList<
                  CxGenerativeSettingsFallbackSettingsPromptTemplate>(
              map['promptTemplates'],
              (value) =>
                  CxGenerativeSettingsFallbackSettingsPromptTemplate.fromMap(
                      (value as Map).cast<String, dynamic>())),
      selectedPrompt: map['selectedPrompt'] == null
          ? null
          : map['selectedPrompt'] as String,
    );
  }
}
