// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_initial_response_setting_next_step_intent_slot_value.dart';

class V2modelsIntentInitialResponseSettingNextStepIntentSlot {
  /// Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  final String mapBlockKey;
  /// When the shape value is `List`, `values` contains a list of slot values. When the value is `Scalar`, `value` contains a single value.
  final String? shape;
  /// Configuration block for the current value of the slot. See `value`.
  final V2modelsIntentInitialResponseSettingNextStepIntentSlotValue? value;

  /// Creates a new [V2modelsIntentInitialResponseSettingNextStepIntentSlot].
  /// [mapBlockKey] Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  /// [shape] When the shape value is `List`, `values` contains a list of slot values. When the value is `Scalar`, `value` contains a single value.
  /// [value] Configuration block for the current value of the slot. See `value`.
  V2modelsIntentInitialResponseSettingNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mapBlockKey': mapBlockKey,
      'shape': ?shape,
      'value': ?value == null ? null : value!.toMap(),
    };
  }

  factory V2modelsIntentInitialResponseSettingNextStepIntentSlot.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingNextStepIntentSlot(
      mapBlockKey: map['mapBlockKey'] as String,
      shape: map['shape'] == null ? null : map['shape'] as String,
      value: map['value'] == null ? null : V2modelsIntentInitialResponseSettingNextStepIntentSlotValue.fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}

