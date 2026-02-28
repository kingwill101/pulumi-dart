// ignore_for_file: unused_element, unnecessary_cast

class GuardrailCodeCallbackAfterModelCallback {
  /// Human-readable description of the callback.
  final String? description;

  /// Whether the callback is disabled. Disabled callbacks are ignored by the
  /// agent.
  final bool? disabled;

  /// The python code to execute for the callback.
  final String pythonCode;

  /// Creates a new [GuardrailCodeCallbackAfterModelCallback].
  /// [description] Human-readable description of the callback.
  /// [disabled] Whether the callback is disabled. Disabled callbacks are ignored by the
  /// [pythonCode] The python code to execute for the callback.
  GuardrailCodeCallbackAfterModelCallback({
    this.description,
    this.disabled,
    required this.pythonCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['pythonCode'] = pythonCode;
    return map;
  }

  factory GuardrailCodeCallbackAfterModelCallback.fromMap(
      Map<String, dynamic> map) {
    return GuardrailCodeCallbackAfterModelCallback(
      description:
          map['description'] == null ? null : map['description'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      pythonCode: map['pythonCode'] as String,
    );
  }
}
