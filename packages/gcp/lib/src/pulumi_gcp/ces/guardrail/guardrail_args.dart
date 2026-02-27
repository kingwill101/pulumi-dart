// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../guardrail_action/guardrail_action.dart';
import '../guardrail_code_callback/guardrail_code_callback.dart';
import '../guardrail_content_filter/guardrail_content_filter.dart';
import '../guardrail_llm_policy/guardrail_llm_policy.dart';
import '../guardrail_llm_prompt_security/guardrail_llm_prompt_security.dart';
import '../guardrail_model_safety/guardrail_model_safety.dart';

/// The set of arguments for Guardrail.
class GuardrailArgs {
  /// Action that is taken when a certain precondition is met.
  /// Structure is documented below.
  final pulumi.Input<GuardrailAction>? action;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> app;

  /// Guardrail that blocks the conversation based on the code callbacks
  /// provided.
  /// Structure is documented below.
  final pulumi.Input<GuardrailCodeCallback>? codeCallback;

  /// Guardrail that bans certain content from being used in the conversation.
  /// Structure is documented below.
  final pulumi.Input<GuardrailContentFilter>? contentFilter;

  /// Description of the guardrail.
  final pulumi.Input<String>? description;

  /// Display name of the guardrail.
  final pulumi.Input<String> displayName;

  /// Whether the guardrail is enabled.
  final pulumi.Input<bool>? enabled;

  /// The ID to use for the guardrail, which will become the final component of
  /// the guardrail's resource name. If not provided, a unique ID will be
  /// automatically assigned for the guardrail.
  final pulumi.Input<String> guardrailId;

  /// Guardrail that blocks the conversation if the LLM response is considered
  /// violating the policy based on the LLM classification.
  /// Structure is documented below.
  final pulumi.Input<GuardrailLlmPolicy>? llmPolicy;

  /// Guardrail that blocks the conversation if the input is considered unsafe
  /// based on the LLM classification.
  /// Structure is documented below.
  final pulumi.Input<GuardrailLlmPromptSecurity>? llmPromptSecurity;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// Model safety settings overrides. When this is set, it will override the
  /// default settings and trigger the guardrail if the response is considered
  /// unsafe.
  /// Structure is documented below.
  final pulumi.Input<GuardrailModelSafety>? modelSafety;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GuardrailArgs({
    this.action,
    required this.app,
    this.codeCallback,
    this.contentFilter,
    this.description,
    required this.displayName,
    this.enabled,
    required this.guardrailId,
    this.llmPolicy,
    this.llmPromptSecurity,
    required this.location,
    this.modelSafety,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = pulumi.Input.mapOptionalInputValue<GuardrailAction,
          Map<String, dynamic>>(actionValue, (value) => value.toMap());
    }
    map['app'] = app;
    final codeCallbackValue = codeCallback;
    if (codeCallbackValue != null) {
      map['codeCallback'] = pulumi.Input.mapOptionalInputValue<
          GuardrailCodeCallback,
          Map<String, dynamic>>(codeCallbackValue, (value) => value.toMap());
    }
    final contentFilterValue = contentFilter;
    if (contentFilterValue != null) {
      map['contentFilter'] = pulumi.Input.mapOptionalInputValue<
          GuardrailContentFilter,
          Map<String, dynamic>>(contentFilterValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    map['guardrailId'] = guardrailId;
    final llmPolicyValue = llmPolicy;
    if (llmPolicyValue != null) {
      map['llmPolicy'] = pulumi.Input.mapOptionalInputValue<GuardrailLlmPolicy,
          Map<String, dynamic>>(llmPolicyValue, (value) => value.toMap());
    }
    final llmPromptSecurityValue = llmPromptSecurity;
    if (llmPromptSecurityValue != null) {
      map['llmPromptSecurity'] = pulumi.Input.mapOptionalInputValue<
              GuardrailLlmPromptSecurity, Map<String, dynamic>>(
          llmPromptSecurityValue, (value) => value.toMap());
    }
    map['location'] = location;
    final modelSafetyValue = modelSafety;
    if (modelSafetyValue != null) {
      map['modelSafety'] = pulumi.Input.mapOptionalInputValue<
          GuardrailModelSafety,
          Map<String, dynamic>>(modelSafetyValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GuardrailArgs.fromMap(Map<String, dynamic> map) {
    return GuardrailArgs(
      action: pulumi.Input.asOptionalInput<GuardrailAction>(map['action']),
      app: pulumi.Input.asInput<String>(map['app']),
      codeCallback: pulumi.Input.asOptionalInput<GuardrailCodeCallback>(
          map['codeCallback']),
      contentFilter: pulumi.Input.asOptionalInput<GuardrailContentFilter>(
          map['contentFilter']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      guardrailId: pulumi.Input.asInput<String>(map['guardrailId']),
      llmPolicy:
          pulumi.Input.asOptionalInput<GuardrailLlmPolicy>(map['llmPolicy']),
      llmPromptSecurity:
          pulumi.Input.asOptionalInput<GuardrailLlmPromptSecurity>(
              map['llmPromptSecurity']),
      location: pulumi.Input.asInput<String>(map['location']),
      modelSafety: pulumi.Input.asOptionalInput<GuardrailModelSafety>(
          map['modelSafety']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
