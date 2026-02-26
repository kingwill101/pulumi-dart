// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingElicitationCodeHook {
  /// Whether a Lambda function should be invoked for the dialog.
  final bool? enableCodeHookInvocation;

  /// Label that indicates the dialog step from which the dialog code hook is happening.
  final String? invocationLabel;

  V2modelsIntentConfirmationSettingElicitationCodeHook({
    this.enableCodeHookInvocation,
    this.invocationLabel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableCodeHookInvocationValue = enableCodeHookInvocation;
    if (enableCodeHookInvocationValue != null) {
      map['enableCodeHookInvocation'] = enableCodeHookInvocationValue;
    }
    final invocationLabelValue = invocationLabel;
    if (invocationLabelValue != null) {
      map['invocationLabel'] = invocationLabelValue;
    }
    return map;
  }

  factory V2modelsIntentConfirmationSettingElicitationCodeHook.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingElicitationCodeHook(
      enableCodeHookInvocation: map['enableCodeHookInvocation'] == null
          ? null
          : map['enableCodeHookInvocation'] as bool,
      invocationLabel: map['invocationLabel'] == null
          ? null
          : map['invocationLabel'] as String,
    );
  }
}
