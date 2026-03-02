// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_initial_response_setting_next_step_intent_slot.dart';

class V2modelsIntentInitialResponseSettingNextStepIntent {
  /// Name of the intent.
  final pulumi.Input<String>? name;
  /// Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  final pulumi.Input<List<V2modelsIntentInitialResponseSettingNextStepIntentSlot>>? slots;

  /// Creates a new [V2modelsIntentInitialResponseSettingNextStepIntent].
  /// [name] Name of the intent.
  /// [slots] Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  V2modelsIntentInitialResponseSettingNextStepIntent({
    this.name,
    this.slots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'slots': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentInitialResponseSettingNextStepIntentSlot>, List<Map<String, dynamic>>>(slots, (value) => pulumi.Input.encodeList<V2modelsIntentInitialResponseSettingNextStepIntentSlot, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsIntentInitialResponseSettingNextStepIntent.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingNextStepIntent(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      slots: map['slots'] == null ? null : (pulumi.Input.decodeList<V2modelsIntentInitialResponseSettingNextStepIntentSlot>(map['slots'], (value) => V2modelsIntentInitialResponseSettingNextStepIntentSlot.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

