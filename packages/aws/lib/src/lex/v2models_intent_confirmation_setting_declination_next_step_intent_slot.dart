// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_confirmation_setting_declination_next_step_intent_slot_value.dart';

class V2modelsIntentConfirmationSettingDeclinationNextStepIntentSlot {
  /// Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  final String mapBlockKey;
  /// When the shape value is `List`, `values` contains a list of slot values. When the value is `Scalar`, `value` contains a single value.
  final String? shape;
  /// Configuration block for the current value of the slot. See `value`.
  final V2modelsIntentConfirmationSettingDeclinationNextStepIntentSlotValue? value;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationNextStepIntentSlot].
  /// [mapBlockKey] Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  /// [shape] When the shape value is `List`, `values` contains a list of slot values. When the value is `Scalar`, `value` contains a single value.
  /// [value] Configuration block for the current value of the slot. See `value`.
  V2modelsIntentConfirmationSettingDeclinationNextStepIntentSlot({
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

  factory V2modelsIntentConfirmationSettingDeclinationNextStepIntentSlot.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationNextStepIntentSlot(
      mapBlockKey: map['mapBlockKey'] as String,
      shape: map['shape'] == null ? null : map['shape'] as String,
      value: map['value'] == null ? null : V2modelsIntentConfirmationSettingDeclinationNextStepIntentSlotValue.fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}

