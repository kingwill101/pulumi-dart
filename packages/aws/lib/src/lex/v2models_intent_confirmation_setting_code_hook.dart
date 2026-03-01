// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification.dart';

class V2modelsIntentConfirmationSettingCodeHook {
  /// Whether a dialog code hook is used when the intent is activated.
  final bool active;

  /// Whether a Lambda function should be invoked for the dialog.
  final bool enableCodeHookInvocation;

  /// Label that indicates the dialog step from which the dialog code hook is happening.
  final String? invocationLabel;

  /// Configuration block that contains the responses and actions that Amazon Lex takes after the Lambda function is complete. See `post_code_hook_specification`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecification?
  postCodeHookSpecification;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHook].
  /// [active] Whether a dialog code hook is used when the intent is activated.
  /// [enableCodeHookInvocation] Whether a Lambda function should be invoked for the dialog.
  /// [invocationLabel] Label that indicates the dialog step from which the dialog code hook is happening.
  /// [postCodeHookSpecification] Configuration block that contains the responses and actions that Amazon Lex takes after the Lambda function is complete. See `post_code_hook_specification`.
  V2modelsIntentConfirmationSettingCodeHook({
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
      'postCodeHookSpecification': ?postCodeHookSpecification == null
          ? null
          : postCodeHookSpecification!.toMap(),
    };
  }

  factory V2modelsIntentConfirmationSettingCodeHook.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingCodeHook(
      active: map['active'] as bool,
      enableCodeHookInvocation: map['enableCodeHookInvocation'] as bool,
      invocationLabel: map['invocationLabel'] == null
          ? null
          : map['invocationLabel'] as String,
      postCodeHookSpecification: map['postCodeHookSpecification'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecification.fromMap(
              (map['postCodeHookSpecification'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
