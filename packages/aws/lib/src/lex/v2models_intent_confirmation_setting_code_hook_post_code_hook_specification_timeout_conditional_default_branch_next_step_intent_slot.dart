// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_conditional_default_branch_next_step_intent_slot_value.dart';

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlot {
  /// Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  final String mapBlockKey;

  /// When the shape value is `List`, `values` contains a list of slot values. When the value is `Scalar`, `value` contains a single value.
  final String? shape;

  /// Configuration block for the current value of the slot. See `value`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlotValue?
      value;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlot].
  /// [mapBlockKey] Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  /// [shape] When the shape value is `List`, `values` contains a list of slot values. When the value is `Scalar`, `value` contains a single value.
  /// [value] Configuration block for the current value of the slot. See `value`.
  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mapBlockKey'] = mapBlockKey;
    final shapeValue = shape;
    if (shapeValue != null) {
      map['shape'] = shapeValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue.toMap();
    }
    return map;
  }

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlot.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlot(
      mapBlockKey: map['mapBlockKey'] as String,
      shape: map['shape'] == null ? null : map['shape'] as String,
      value: map['value'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlotValue
              .fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}
