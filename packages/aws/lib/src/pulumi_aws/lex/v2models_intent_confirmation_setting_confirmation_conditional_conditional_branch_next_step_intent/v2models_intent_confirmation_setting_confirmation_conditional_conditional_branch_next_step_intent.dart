// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_intent_confirmation_setting_confirmation_conditional_conditional_branch_next_step_intent_slot/v2models_intent_confirmation_setting_confirmation_conditional_conditional_branch_next_step_intent_slot.dart';

class V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntent {
  /// Name of the intent.
  final String? name;

  /// Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See <span pulumi-lang-nodejs="`slot`" pulumi-lang-dotnet="`Slot`" pulumi-lang-go="`slot`" pulumi-lang-python="`slot`" pulumi-lang-yaml="`slot`" pulumi-lang-java="`slot`">`slot`</span>.
  final List<
          V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntentSlot>?
      slots;

  V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntent({
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
      map['slots'] = Input.encodeList<
          V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntentSlot,
          Map<String, dynamic>>(slotsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntent.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntent(
      name: map['name'] == null ? null : map['name'] as String,
      slots: map['slots'] == null
          ? null
          : Input.decodeList<
                  V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntentSlot>(
              map['slots'],
              (value) =>
                  V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntentSlot
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
