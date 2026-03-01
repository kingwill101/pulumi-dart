// ignore_for_file: unused_element, unnecessary_cast

import 'guardrail_llm_prompt_security_custom_policy.dart';
import 'guardrail_llm_prompt_security_default_settings.dart';

class GuardrailLlmPromptSecurity {
  /// Guardrail that blocks the conversation if the LLM response is considered
  /// violating the policy based on the LLM classification.
  /// Structure is documented below.
  final GuardrailLlmPromptSecurityCustomPolicy? customPolicy;

  /// Configuration for default system security settings.
  /// Structure is documented below.
  final GuardrailLlmPromptSecurityDefaultSettings? defaultSettings;

  /// Creates a new [GuardrailLlmPromptSecurity].
  /// [customPolicy] Guardrail that blocks the conversation if the LLM response is considered
  /// [defaultSettings] Configuration for default system security settings.
  GuardrailLlmPromptSecurity({this.customPolicy, this.defaultSettings});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPolicy': ?customPolicy == null ? null : customPolicy!.toMap(),
      'defaultSettings': ?defaultSettings == null
          ? null
          : defaultSettings!.toMap(),
    };
  }

  factory GuardrailLlmPromptSecurity.fromMap(Map<String, dynamic> map) {
    return GuardrailLlmPromptSecurity(
      customPolicy: map['customPolicy'] == null
          ? null
          : GuardrailLlmPromptSecurityCustomPolicy.fromMap(
              (map['customPolicy'] as Map).cast<String, dynamic>(),
            ),
      defaultSettings: map['defaultSettings'] == null
          ? null
          : GuardrailLlmPromptSecurityDefaultSettings.fromMap(
              (map['defaultSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
