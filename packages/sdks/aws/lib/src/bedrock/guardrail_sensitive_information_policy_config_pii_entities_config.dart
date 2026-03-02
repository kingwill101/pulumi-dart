// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig {
  /// Options for sensitive information action. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  final pulumi.Input<String> action;
  /// Action to take when harmful content is detected in the input. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  final pulumi.Input<String>? inputAction;
  /// Whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation.
  final pulumi.Input<bool>? inputEnabled;
  /// Action to take when harmful content is detected in the output. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  final pulumi.Input<String>? outputAction;
  /// Whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation.
  final pulumi.Input<bool>? outputEnabled;
  /// The currently supported PII entities.
  final pulumi.Input<String> type;

  /// Creates a new [GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig].
  /// [action] Options for sensitive information action. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  /// [inputAction] Action to take when harmful content is detected in the input. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  /// [inputEnabled] Whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation.
  /// [outputAction] Action to take when harmful content is detected in the output. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  /// [outputEnabled] Whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation.
  /// [type] The currently supported PII entities.
  GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig({
    required this.action,
    this.inputAction,
    this.inputEnabled,
    this.outputAction,
    this.outputEnabled,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'inputAction': ?inputAction,
      'inputEnabled': ?inputEnabled,
      'outputAction': ?outputAction,
      'outputEnabled': ?outputEnabled,
      'type': type,
    };
  }

  factory GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig(
      action: (map['action'] as String).input(),
      inputAction: map['inputAction'] == null ? null : ((map['inputAction'] as String).input()).input(),
      inputEnabled: map['inputEnabled'] == null ? null : ((map['inputEnabled'] as bool).input()).input(),
      outputAction: map['outputAction'] == null ? null : ((map['outputAction'] as String).input()).input(),
      outputEnabled: map['outputEnabled'] == null ? null : ((map['outputEnabled'] as bool).input()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

