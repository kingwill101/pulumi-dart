// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification.dart';

class V2modelsIntentInitialResponseSettingCodeHook {
  /// Whether a dialog code hook is used when the intent is activated.
  final pulumi.Input<bool> active;
  /// Whether a Lambda function should be invoked for the dialog.
  final pulumi.Input<bool> enableCodeHookInvocation;
  /// Label that indicates the dialog step from which the dialog code hook is happening.
  final pulumi.Input<String>? invocationLabel;
  /// Configuration block that contains the responses and actions that Amazon Lex takes after the Lambda function is complete. See `post_code_hook_specification`.
  final pulumi.Input<V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecification>? postCodeHookSpecification;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHook].
  /// [active] Whether a dialog code hook is used when the intent is activated.
  /// [enableCodeHookInvocation] Whether a Lambda function should be invoked for the dialog.
  /// [invocationLabel] Label that indicates the dialog step from which the dialog code hook is happening.
  /// [postCodeHookSpecification] Configuration block that contains the responses and actions that Amazon Lex takes after the Lambda function is complete. See `post_code_hook_specification`.
  const V2modelsIntentInitialResponseSettingCodeHook({
    required this.active,
    required this.enableCodeHookInvocation,
    this.invocationLabel,
    this.postCodeHookSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'enableCodeHookInvocation': enableCodeHookInvocation,
      'invocationLabel': ?invocationLabel,
      'postCodeHookSpecification': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecification, Map<String, dynamic>>(postCodeHookSpecification, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentInitialResponseSettingCodeHook.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingCodeHook(
      active: pulumi.Input.fromValue(map['active'] as bool),
      enableCodeHookInvocation: pulumi.Input.fromValue(map['enableCodeHookInvocation'] as bool),
      invocationLabel: (() { final guardedValue = map['invocationLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postCodeHookSpecification: (() { final guardedValue = map['postCodeHookSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

