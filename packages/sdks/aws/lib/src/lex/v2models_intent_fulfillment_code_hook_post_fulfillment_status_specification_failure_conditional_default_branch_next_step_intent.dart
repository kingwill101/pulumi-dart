// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_conditional_default_branch_next_step_intent_slot.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntent {
  /// Name of the intent.
  final String? name;
  /// Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  final List<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntentSlot>? slots;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntent].
  /// [name] Name of the intent.
  /// [slots] Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'slots': ?slots == null ? null : pulumi.Input.encodeList<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntentSlot, Map<String, dynamic>>(slots!, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntent.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntent(
      name: map['name'] == null ? null : map['name'] as String,
      slots: map['slots'] == null ? null : pulumi.Input.decodeList<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntentSlot>(map['slots'], (value) => V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntentSlot.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

