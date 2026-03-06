// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsIntentConfirmationSettingElicitationCodeHook {
  /// Whether a Lambda function should be invoked for the dialog.
  final pulumi.Input<bool>? enableCodeHookInvocation;
  /// Label that indicates the dialog step from which the dialog code hook is happening.
  final pulumi.Input<String>? invocationLabel;

  /// Creates a new [V2modelsIntentConfirmationSettingElicitationCodeHook].
  /// [enableCodeHookInvocation] Whether a Lambda function should be invoked for the dialog.
  /// [invocationLabel] Label that indicates the dialog step from which the dialog code hook is happening.
  const V2modelsIntentConfirmationSettingElicitationCodeHook({
    this.enableCodeHookInvocation,
    this.invocationLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCodeHookInvocation': ?enableCodeHookInvocation,
      'invocationLabel': ?invocationLabel,
    };
  }

  factory V2modelsIntentConfirmationSettingElicitationCodeHook.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingElicitationCodeHook(
      enableCodeHookInvocation: (() { final guardedValue = map['enableCodeHookInvocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      invocationLabel: (() { final guardedValue = map['invocationLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

