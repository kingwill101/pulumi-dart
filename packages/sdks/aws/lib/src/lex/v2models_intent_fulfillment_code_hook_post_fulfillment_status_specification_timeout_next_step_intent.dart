// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_timeout_next_step_intent_slot.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntent {
  /// Name of the intent.
  final String? name;
  /// Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  final List<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntentSlot>? slots;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntent].
  /// [name] Name of the intent.
  /// [slots] Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntent({
    this.name,
    this.slots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'slots': ?slots == null ? null : pulumi.Input.encodeList<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntentSlot, Map<String, dynamic>>(slots!, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntent.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntent(
      name: map['name'] == null ? null : map['name'] as String,
      slots: map['slots'] == null ? null : pulumi.Input.decodeList<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntentSlot>(map['slots'], (value) => V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntentSlot.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

