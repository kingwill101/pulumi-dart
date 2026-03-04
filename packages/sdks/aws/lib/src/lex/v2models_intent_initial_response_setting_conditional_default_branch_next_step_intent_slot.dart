// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_initial_response_setting_conditional_default_branch_next_step_intent_slot_value.dart';

class V2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntentSlot {
  /// Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  final pulumi.Input<String> mapBlockKey;

  /// When the shape value is `List`, `values` contains a list of slot values. When the value is `Scalar`, `value` contains a single value.
  final pulumi.Input<String>? shape;

  /// Configuration block for the current value of the slot. See `value`.
  final pulumi.Input<
    V2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntentSlotValue
  >?
  value;

  /// Creates a new [V2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntentSlot].
  /// [mapBlockKey] Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  /// [shape] When the shape value is `List`, `values` contains a list of slot values. When the value is `Scalar`, `value` contains a single value.
  /// [value] Configuration block for the current value of the slot. See `value`.
  V2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mapBlockKey': mapBlockKey,
      'shape': ?shape,
      'value':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntentSlotValue,
            Map<String, dynamic>
          >(value, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntentSlot.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntentSlot(
      mapBlockKey: pulumi.Input.fromValue(map['mapBlockKey'] as String),
      shape: (() {
        final guardedValue = map['shape'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntentSlotValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
