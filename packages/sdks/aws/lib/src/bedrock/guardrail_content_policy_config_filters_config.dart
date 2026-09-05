// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailContentPolicyConfigFiltersConfig {
  /// Action to take when harmful content is detected. Valid values: `BLOCK`, `NONE`.
  final pulumi.Input<String?>? inputAction;
  /// Toggles guardrail evaluation on input.
  final pulumi.Input<bool?>? inputEnabled;
  /// List of selected input modalities. Valid values: `IMAGE`, `TEXT`.
  final pulumi.Input<List<String>?>? inputModalities;
  /// Strength for filters. Valid values: `NONE`, `LOW`, `MEDIUM`, `HIGH`.
  final pulumi.Input<String> inputStrength;
  /// Action to take when harmful content is detected. Valid values: `BLOCK`, `NONE`.
  final pulumi.Input<String?>? outputAction;
  /// Toggles guardrail evaluation on output.
  final pulumi.Input<bool?>? outputEnabled;
  /// List of selected output modalities. Valid values: `IMAGE`, `TEXT`.
  final pulumi.Input<List<String>?>? outputModalities;
  /// Strength for filters. Valid values: `NONE`, `LOW`, `MEDIUM`, `HIGH`.
  final pulumi.Input<String> outputStrength;
  /// Type of contextual grounding filter.
  final pulumi.Input<String> type;

  /// Creates a new [GuardrailContentPolicyConfigFiltersConfig].
  /// [inputAction] Action to take when harmful content is detected. Valid values: `BLOCK`, `NONE`.
  /// [inputEnabled] Toggles guardrail evaluation on input.
  /// [inputModalities] List of selected input modalities. Valid values: `IMAGE`, `TEXT`.
  /// [inputStrength] Strength for filters. Valid values: `NONE`, `LOW`, `MEDIUM`, `HIGH`.
  /// [outputAction] Action to take when harmful content is detected. Valid values: `BLOCK`, `NONE`.
  /// [outputEnabled] Toggles guardrail evaluation on output.
  /// [outputModalities] List of selected output modalities. Valid values: `IMAGE`, `TEXT`.
  /// [outputStrength] Strength for filters. Valid values: `NONE`, `LOW`, `MEDIUM`, `HIGH`.
  /// [type] Type of contextual grounding filter.
  const GuardrailContentPolicyConfigFiltersConfig({
    this.inputAction,
    this.inputEnabled,
    this.inputModalities,
    required this.inputStrength,
    this.outputAction,
    this.outputEnabled,
    this.outputModalities,
    required this.outputStrength,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputAction': ?inputAction,
      'inputEnabled': ?inputEnabled,
      'inputModalities': ?inputModalities,
      'inputStrength': inputStrength,
      'outputAction': ?outputAction,
      'outputEnabled': ?outputEnabled,
      'outputModalities': ?outputModalities,
      'outputStrength': outputStrength,
      'type': type,
    };
  }

  factory GuardrailContentPolicyConfigFiltersConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailContentPolicyConfigFiltersConfig(
      inputAction: (() { final guardedValue = map['inputAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputEnabled: (() { final guardedValue = map['inputEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inputModalities: (() { final guardedValue = map['inputModalities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      inputStrength: pulumi.Input.fromValue(map['inputStrength'] as String),
      outputAction: (() { final guardedValue = map['outputAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputEnabled: (() { final guardedValue = map['outputEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      outputModalities: (() { final guardedValue = map['outputModalities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputStrength: pulumi.Input.fromValue(map['outputStrength'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
