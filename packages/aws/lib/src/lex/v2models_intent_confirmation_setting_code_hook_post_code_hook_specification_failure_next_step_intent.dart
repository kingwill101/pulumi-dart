// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_next_step_intent_slot.dart';

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntent {
  /// Name of the intent.
  final String? name;

  /// Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  final List<
    V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntentSlot
  >?
  slots;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntent].
  /// [name] Name of the intent.
  /// [slots] Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntent({
    this.name,
    this.slots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'slots': ?slots == null
          ? null
          : pulumi.Input.encodeList<
              V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntentSlot,
              Map<String, dynamic>
            >(slots!, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntent.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntent(
      name: map['name'] == null ? null : map['name'] as String,
      slots: map['slots'] == null
          ? null
          : pulumi.Input.decodeList<
              V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntentSlot
            >(
              map['slots'],
              (value) =>
                  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntentSlot.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
