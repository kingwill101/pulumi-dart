// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_initial_response_setting_conditional_conditional_branch_next_step_intent_slot.dart';

class V2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntent {
  /// Name of the intent.
  final pulumi.Input<String>? name;
  /// Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  final pulumi.Input<List<V2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntentSlot>>? slots;

  /// Creates a new [V2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntent].
  /// [name] Name of the intent.
  /// [slots] Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  V2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntent({
    this.name,
    this.slots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'slots': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntentSlot>, List<Map<String, dynamic>>>(slots, (value) => pulumi.Input.encodeList<V2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntentSlot, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntent.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntent(
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      slots: map['slots'] == null ? null : ((pulumi.Input.decodeList<V2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntentSlot>(map['slots']!, (value) => V2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntentSlot.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

