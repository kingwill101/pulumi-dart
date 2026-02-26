// ignore_for_file: unused_element, unnecessary_cast

import '../guardrail_llm_prompt_security_custom_policy_model_settings/guardrail_llm_prompt_security_custom_policy_model_settings.dart';

class GuardrailLlmPromptSecurityCustomPolicy {
  /// By default, the LLM policy check is bypassed for short utterances.
  /// Enabling this setting applies the policy check to all utterances,
  /// including those that would normally be skipped.
  final bool? allowShortUtterance;

  /// If an error occurs during the policy check, fail open and do not trigger
  /// the guardrail.
  final bool? failOpen;

  /// When checking this policy, consider the last 'n' messages in the
  /// conversation.
  /// When not set a default value of 10 will be used.
  final int? maxConversationMessages;

  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final GuardrailLlmPromptSecurityCustomPolicyModelSettings? modelSettings;

  /// Defines when to apply the policy check during the conversation. If set to
  /// `POLICY_SCOPE_UNSPECIFIED`, the policy will be applied to the user input.
  /// When applying the policy to the agent response, additional latency will
  /// be introduced before the agent can respond.
  /// Possible values:
  /// USER_QUERY
  /// AGENT_RESPONSE
  /// USER_QUERY_AND_AGENT_RESPONSE
  final String policyScope;

  /// Policy prompt.
  final String prompt;

  GuardrailLlmPromptSecurityCustomPolicy({
    this.allowShortUtterance,
    this.failOpen,
    this.maxConversationMessages,
    this.modelSettings,
    required this.policyScope,
    required this.prompt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowShortUtteranceValue = allowShortUtterance;
    if (allowShortUtteranceValue != null) {
      map['allowShortUtterance'] = allowShortUtteranceValue;
    }
    final failOpenValue = failOpen;
    if (failOpenValue != null) {
      map['failOpen'] = failOpenValue;
    }
    final maxConversationMessagesValue = maxConversationMessages;
    if (maxConversationMessagesValue != null) {
      map['maxConversationMessages'] = maxConversationMessagesValue;
    }
    final modelSettingsValue = modelSettings;
    if (modelSettingsValue != null) {
      map['modelSettings'] = modelSettingsValue.toMap();
    }
    map['policyScope'] = policyScope;
    map['prompt'] = prompt;
    return map;
  }

  factory GuardrailLlmPromptSecurityCustomPolicy.fromMap(
      Map<String, dynamic> map) {
    return GuardrailLlmPromptSecurityCustomPolicy(
      allowShortUtterance: map['allowShortUtterance'] == null
          ? null
          : map['allowShortUtterance'] as bool,
      failOpen: map['failOpen'] == null ? null : map['failOpen'] as bool,
      maxConversationMessages: map['maxConversationMessages'] == null
          ? null
          : map['maxConversationMessages'] as int,
      modelSettings: map['modelSettings'] == null
          ? null
          : GuardrailLlmPromptSecurityCustomPolicyModelSettings.fromMap(
              (map['modelSettings'] as Map).cast<String, dynamic>()),
      policyScope: map['policyScope'] as String,
      prompt: map['prompt'] as String,
    );
  }
}
