// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentDialogCodeHook {
  /// Enables the dialog code hook so that it processes user requests.
  final bool enabled;

  /// Creates a new [V2modelsIntentDialogCodeHook].
  /// [enabled] Enables the dialog code hook so that it processes user requests.
  V2modelsIntentDialogCodeHook({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory V2modelsIntentDialogCodeHook.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentDialogCodeHook(
      enabled: map['enabled'] as bool,
    );
  }
}

