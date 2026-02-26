// ignore_for_file: unused_element, unnecessary_cast

import '../guardrail_code_callback_after_agent_callback/guardrail_code_callback_after_agent_callback.dart';
import '../guardrail_code_callback_after_model_callback/guardrail_code_callback_after_model_callback.dart';
import '../guardrail_code_callback_before_agent_callback/guardrail_code_callback_before_agent_callback.dart';
import '../guardrail_code_callback_before_model_callback/guardrail_code_callback_before_model_callback.dart';

class GuardrailCodeCallback {
  /// A callback defines the custom logic to be executed at various stages of
  /// agent interaction.
  /// Structure is documented below.
  final GuardrailCodeCallbackAfterAgentCallback? afterAgentCallback;

  /// A callback defines the custom logic to be executed at various stages of
  /// agent interaction.
  /// Structure is documented below.
  final GuardrailCodeCallbackAfterModelCallback? afterModelCallback;

  /// A callback defines the custom logic to be executed at various stages of
  /// agent interaction.
  /// Structure is documented below.
  final GuardrailCodeCallbackBeforeAgentCallback? beforeAgentCallback;

  /// A callback defines the custom logic to be executed at various stages of
  /// agent interaction.
  /// Structure is documented below.
  final GuardrailCodeCallbackBeforeModelCallback? beforeModelCallback;

  GuardrailCodeCallback({
    this.afterAgentCallback,
    this.afterModelCallback,
    this.beforeAgentCallback,
    this.beforeModelCallback,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final afterAgentCallbackValue = afterAgentCallback;
    if (afterAgentCallbackValue != null) {
      map['afterAgentCallback'] = afterAgentCallbackValue.toMap();
    }
    final afterModelCallbackValue = afterModelCallback;
    if (afterModelCallbackValue != null) {
      map['afterModelCallback'] = afterModelCallbackValue.toMap();
    }
    final beforeAgentCallbackValue = beforeAgentCallback;
    if (beforeAgentCallbackValue != null) {
      map['beforeAgentCallback'] = beforeAgentCallbackValue.toMap();
    }
    final beforeModelCallbackValue = beforeModelCallback;
    if (beforeModelCallbackValue != null) {
      map['beforeModelCallback'] = beforeModelCallbackValue.toMap();
    }
    return map;
  }

  factory GuardrailCodeCallback.fromMap(Map<String, dynamic> map) {
    return GuardrailCodeCallback(
      afterAgentCallback: map['afterAgentCallback'] == null
          ? null
          : GuardrailCodeCallbackAfterAgentCallback.fromMap(
              (map['afterAgentCallback'] as Map).cast<String, dynamic>()),
      afterModelCallback: map['afterModelCallback'] == null
          ? null
          : GuardrailCodeCallbackAfterModelCallback.fromMap(
              (map['afterModelCallback'] as Map).cast<String, dynamic>()),
      beforeAgentCallback: map['beforeAgentCallback'] == null
          ? null
          : GuardrailCodeCallbackBeforeAgentCallback.fromMap(
              (map['beforeAgentCallback'] as Map).cast<String, dynamic>()),
      beforeModelCallback: map['beforeModelCallback'] == null
          ? null
          : GuardrailCodeCallbackBeforeModelCallback.fromMap(
              (map['beforeModelCallback'] as Map).cast<String, dynamic>()),
    );
  }
}
