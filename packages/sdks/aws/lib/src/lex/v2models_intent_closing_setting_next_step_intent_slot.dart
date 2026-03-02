// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_closing_setting_next_step_intent_slot_value.dart';

class V2modelsIntentClosingSettingNextStepIntentSlot {
  /// Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  final pulumi.Input<String> mapBlockKey;
  /// When the shape value is `List`, `values` contains a list of slot values. When the value is `Scalar`, `value` contains a single value.
  final pulumi.Input<String>? shape;
  /// Configuration block for the current value of the slot. See `value`.
  final pulumi.Input<V2modelsIntentClosingSettingNextStepIntentSlotValue>? value;

  /// Creates a new [V2modelsIntentClosingSettingNextStepIntentSlot].
  /// [mapBlockKey] Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  /// [shape] When the shape value is `List`, `values` contains a list of slot values. When the value is `Scalar`, `value` contains a single value.
  /// [value] Configuration block for the current value of the slot. See `value`.
  V2modelsIntentClosingSettingNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mapBlockKey': mapBlockKey,
      'shape': ?shape,
      'value': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentClosingSettingNextStepIntentSlotValue, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentClosingSettingNextStepIntentSlot.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingNextStepIntentSlot(
      mapBlockKey: (map['mapBlockKey'] as String).input(),
      shape: map['shape'] == null ? null : ((map['shape'] as String).input()).input(),
      value: map['value'] == null ? null : ((V2modelsIntentClosingSettingNextStepIntentSlotValue.fromMap((map['value']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

