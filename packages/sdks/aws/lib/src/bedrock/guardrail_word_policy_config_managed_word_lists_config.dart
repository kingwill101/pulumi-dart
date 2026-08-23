// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailWordPolicyConfigManagedWordListsConfig {
  /// Action to take when harmful content is detected in the input. Valid values: `BLOCK`, `NONE`.
  final pulumi.Input<String>? inputAction;
  /// Whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation.
  final pulumi.Input<bool>? inputEnabled;
  /// Action to take when harmful content is detected in the output. Valid values: `BLOCK`, `NONE`.
  final pulumi.Input<String>? outputAction;
  /// Whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation.
  final pulumi.Input<bool>? outputEnabled;
  /// Options for managed words.
  final pulumi.Input<String> type;

  /// Creates a new [GuardrailWordPolicyConfigManagedWordListsConfig].
  /// [inputAction] Action to take when harmful content is detected in the input. Valid values: `BLOCK`, `NONE`.
  /// [inputEnabled] Whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation.
  /// [outputAction] Action to take when harmful content is detected in the output. Valid values: `BLOCK`, `NONE`.
  /// [outputEnabled] Whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation.
  /// [type] Options for managed words.
  const GuardrailWordPolicyConfigManagedWordListsConfig({
    this.inputAction,
    this.inputEnabled,
    this.outputAction,
    this.outputEnabled,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputAction': ?inputAction,
      'inputEnabled': ?inputEnabled,
      'outputAction': ?outputAction,
      'outputEnabled': ?outputEnabled,
      'type': type,
    };
  }

  factory GuardrailWordPolicyConfigManagedWordListsConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailWordPolicyConfigManagedWordListsConfig(
      inputAction: (() { final guardedValue = map['inputAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputEnabled: (() { final guardedValue = map['inputEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      outputAction: (() { final guardedValue = map['outputAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputEnabled: (() { final guardedValue = map['outputEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
