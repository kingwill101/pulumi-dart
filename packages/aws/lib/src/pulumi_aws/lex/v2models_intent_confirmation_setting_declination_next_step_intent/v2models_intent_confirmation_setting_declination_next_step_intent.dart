// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_intent_confirmation_setting_declination_next_step_intent_slot/v2models_intent_confirmation_setting_declination_next_step_intent_slot.dart';

class V2modelsIntentConfirmationSettingDeclinationNextStepIntent {
  /// Name of the intent.
  final String? name;

  /// Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See <span pulumi-lang-nodejs="`slot`" pulumi-lang-dotnet="`Slot`" pulumi-lang-go="`slot`" pulumi-lang-python="`slot`" pulumi-lang-yaml="`slot`" pulumi-lang-java="`slot`">`slot`</span>.
  final List<V2modelsIntentConfirmationSettingDeclinationNextStepIntentSlot>?
      slots;

  V2modelsIntentConfirmationSettingDeclinationNextStepIntent({
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
          V2modelsIntentConfirmationSettingDeclinationNextStepIntentSlot,
          Map<String, dynamic>>(slotsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsIntentConfirmationSettingDeclinationNextStepIntent.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationNextStepIntent(
      name: map['name'] == null ? null : map['name'] as String,
      slots: map['slots'] == null
          ? null
          : Input.decodeList<
                  V2modelsIntentConfirmationSettingDeclinationNextStepIntentSlot>(
              map['slots'],
              (value) =>
                  V2modelsIntentConfirmationSettingDeclinationNextStepIntentSlot
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
