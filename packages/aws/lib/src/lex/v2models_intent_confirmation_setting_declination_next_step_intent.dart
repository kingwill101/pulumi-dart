// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_declination_next_step_intent_slot.dart';

class V2modelsIntentConfirmationSettingDeclinationNextStepIntent {
  /// Name of the intent.
  final String? name;

  /// Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  final List<V2modelsIntentConfirmationSettingDeclinationNextStepIntentSlot>?
  slots;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationNextStepIntent].
  /// [name] Name of the intent.
  /// [slots] Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  V2modelsIntentConfirmationSettingDeclinationNextStepIntent({
    this.name,
    this.slots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'slots': ?slots == null
          ? null
          : pulumi.Input.encodeList<
              V2modelsIntentConfirmationSettingDeclinationNextStepIntentSlot,
              Map<String, dynamic>
            >(slots!, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentConfirmationSettingDeclinationNextStepIntent.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingDeclinationNextStepIntent(
      name: map['name'] == null ? null : map['name'] as String,
      slots: map['slots'] == null
          ? null
          : pulumi.Input.decodeList<
              V2modelsIntentConfirmationSettingDeclinationNextStepIntentSlot
            >(
              map['slots'],
              (value) =>
                  V2modelsIntentConfirmationSettingDeclinationNextStepIntentSlot.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
