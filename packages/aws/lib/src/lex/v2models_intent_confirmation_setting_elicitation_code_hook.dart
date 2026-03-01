// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentConfirmationSettingElicitationCodeHook {
  /// Whether a Lambda function should be invoked for the dialog.
  final bool? enableCodeHookInvocation;
  /// Label that indicates the dialog step from which the dialog code hook is happening.
  final String? invocationLabel;

  /// Creates a new [V2modelsIntentConfirmationSettingElicitationCodeHook].
  /// [enableCodeHookInvocation] Whether a Lambda function should be invoked for the dialog.
  /// [invocationLabel] Label that indicates the dialog step from which the dialog code hook is happening.
  V2modelsIntentConfirmationSettingElicitationCodeHook({
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
      enableCodeHookInvocation: map['enableCodeHookInvocation'] == null ? null : map['enableCodeHookInvocation'] as bool,
      invocationLabel: map['invocationLabel'] == null ? null : map['invocationLabel'] as String,
    );
  }
}

