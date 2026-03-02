// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_closing_setting_conditional_default_branch_next_step_intent_slot.dart';

class V2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntent {
  /// Name of the intent.
  final pulumi.Input<String>? name;
  /// Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  final pulumi.Input<List<V2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntentSlot>>? slots;

  /// Creates a new [V2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntent].
  /// [name] Name of the intent.
  /// [slots] Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  V2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'slots': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntentSlot>, List<Map<String, dynamic>>>(slots, (value) => pulumi.Input.encodeList<V2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntentSlot, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntent.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntent(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      slots: map['slots'] == null ? null : (pulumi.Input.decodeList<V2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntentSlot>(map['slots'], (value) => V2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntentSlot.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

