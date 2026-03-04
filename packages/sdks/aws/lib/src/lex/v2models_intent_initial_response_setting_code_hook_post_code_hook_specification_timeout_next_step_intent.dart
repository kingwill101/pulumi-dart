// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_timeout_next_step_intent_slot.dart';

class V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntent {
  /// Name of the intent.
  final pulumi.Input<String>? name;

  /// Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  final pulumi.Input<
    List<
      V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlot
    >
  >?
  slots;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntent].
  /// [name] Name of the intent.
  /// [slots] Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntent({
    this.name,
    this.slots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'slots':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlot
            >,
            List<Map<String, dynamic>>
          >(
            slots,
            (value) =>
                pulumi.Input.encodeList<
                  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlot,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntent.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntent(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      slots: (() {
        final guardedValue = map['slots'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlot
          >(
            guardedValue,
            (value) =>
                V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlot.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
