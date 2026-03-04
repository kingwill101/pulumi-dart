// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_next_step_intent_slot_value.dart';

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlot {
  /// Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  final pulumi.Input<String> mapBlockKey;

  /// When the shape value is `List`, `values` contains a list of slot values. When the value is `Scalar`, `value` contains a single value.
  final pulumi.Input<String>? shape;

  /// Configuration block for the current value of the slot. See `value`.
  final pulumi.Input<
    V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlotValue
  >?
  value;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlot].
  /// [mapBlockKey] Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  /// [shape] When the shape value is `List`, `values` contains a list of slot values. When the value is `Scalar`, `value` contains a single value.
  /// [value] Configuration block for the current value of the slot. See `value`.
  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlot({
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
            V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlotValue,
            Map<String, dynamic>
          >(value, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlot.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlot(
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
          V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlotValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
