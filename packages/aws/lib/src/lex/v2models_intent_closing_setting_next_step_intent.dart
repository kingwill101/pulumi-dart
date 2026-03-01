// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_closing_setting_next_step_intent_slot.dart';

class V2modelsIntentClosingSettingNextStepIntent {
  /// Name of the intent.
  final String? name;
  /// Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  final List<V2modelsIntentClosingSettingNextStepIntentSlot>? slots;

  /// Creates a new [V2modelsIntentClosingSettingNextStepIntent].
  /// [name] Name of the intent.
  /// [slots] Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  V2modelsIntentClosingSettingNextStepIntent({
    this.name,
    this.slots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'slots': ?slots == null ? null : pulumi.Input.encodeList<V2modelsIntentClosingSettingNextStepIntentSlot, Map<String, dynamic>>(slots!, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentClosingSettingNextStepIntent.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingNextStepIntent(
      name: map['name'] == null ? null : map['name'] as String,
      slots: map['slots'] == null ? null : pulumi.Input.decodeList<V2modelsIntentClosingSettingNextStepIntentSlot>(map['slots'], (value) => V2modelsIntentClosingSettingNextStepIntentSlot.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

