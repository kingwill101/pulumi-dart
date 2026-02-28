// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_failure_conditional_default_branch_next_step_intent_slot.dart';

class V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntent {
  /// Name of the intent.
  final String? name;

  /// Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  final List<
          V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntentSlot>?
      slots;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntent].
  /// [name] Name of the intent.
  /// [slots] Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slots,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final slotsValue = slots;
    if (slotsValue != null) {
      map['slots'] = pulumi.Input.encodeList<
          V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntentSlot,
          Map<String, dynamic>>(slotsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntent.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntent(
      name: map['name'] == null ? null : map['name'] as String,
      slots: map['slots'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntentSlot>(
              map['slots'],
              (value) =>
                  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntentSlot
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
