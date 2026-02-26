// ignore_for_file: unused_element, unnecessary_cast

import '../guardrail_llm_prompt_security_custom_policy/guardrail_llm_prompt_security_custom_policy.dart';
import '../guardrail_llm_prompt_security_default_settings/guardrail_llm_prompt_security_default_settings.dart';

class GuardrailLlmPromptSecurity {
  /// Guardrail that blocks the conversation if the LLM response is considered
  /// violating the policy based on the LLM classification.
  /// Structure is documented below.
  final GuardrailLlmPromptSecurityCustomPolicy? customPolicy;

  /// Configuration for default system security settings.
  /// Structure is documented below.
  final GuardrailLlmPromptSecurityDefaultSettings? defaultSettings;

  GuardrailLlmPromptSecurity({
    this.customPolicy,
    this.defaultSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customPolicyValue = customPolicy;
    if (customPolicyValue != null) {
      map['customPolicy'] = customPolicyValue.toMap();
    }
    final defaultSettingsValue = defaultSettings;
    if (defaultSettingsValue != null) {
      map['defaultSettings'] = defaultSettingsValue.toMap();
    }
    return map;
  }

  factory GuardrailLlmPromptSecurity.fromMap(Map<String, dynamic> map) {
    return GuardrailLlmPromptSecurity(
      customPolicy: map['customPolicy'] == null
          ? null
          : GuardrailLlmPromptSecurityCustomPolicy.fromMap(
              (map['customPolicy'] as Map).cast<String, dynamic>()),
      defaultSettings: map['defaultSettings'] == null
          ? null
          : GuardrailLlmPromptSecurityDefaultSettings.fromMap(
              (map['defaultSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
