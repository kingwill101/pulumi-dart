// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsIntentDialogCodeHook {
  /// Enables the dialog code hook so that it processes user requests.
  final pulumi.Input<bool> enabled;

  /// Creates a new [V2modelsIntentDialogCodeHook].
  /// [enabled] Enables the dialog code hook so that it processes user requests.
  const V2modelsIntentDialogCodeHook({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory V2modelsIntentDialogCodeHook.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentDialogCodeHook(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
