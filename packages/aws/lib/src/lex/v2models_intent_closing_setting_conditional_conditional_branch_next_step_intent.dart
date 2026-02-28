// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_closing_setting_conditional_conditional_branch_next_step_intent_slot.dart';

class V2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntent {
  /// Name of the intent.
  final String? name;

  /// Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  final List<
          V2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntentSlot>?
      slots;

  /// Creates a new [V2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntent].
  /// [name] Name of the intent.
  /// [slots] Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  V2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntent({
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
          V2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntentSlot,
          Map<String, dynamic>>(slotsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntent.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntent(
      name: map['name'] == null ? null : map['name'] as String,
      slots: map['slots'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntentSlot>(
              map['slots'],
              (value) =>
                  V2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntentSlot
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
