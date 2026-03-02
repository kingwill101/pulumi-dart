// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_failure_conditional_default_branch_next_step_intent_slot.dart';

class V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntent {
  /// Name of the intent.
  final pulumi.Input<String>? name;
  /// Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  final pulumi.Input<List<V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntentSlot>>? slots;

  /// Creates a new [V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntent].
  /// [name] Name of the intent.
  /// [slots] Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'slots': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntentSlot>, List<Map<String, dynamic>>>(slots, (value) => pulumi.Input.encodeList<V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntentSlot, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntent.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntent(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      slots: map['slots'] == null ? null : (pulumi.Input.decodeList<V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntentSlot>(map['slots'], (value) => V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntentSlot.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

