// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_conditional_conditional_branch_next_step_intent_slot.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntent {
  /// Name of the intent.
  final String? name;

  /// Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  final List<
          V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntentSlot>?
      slots;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntent].
  /// [name] Name of the intent.
  /// [slots] Configuration block for all of the slot value overrides for the intent. The name of the slot maps to the value of the slot. Slots that are not included in the map aren't overridden. See `slot`.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntent({
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
      map['slots'] = pulumi.Input.encodeList<
          V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntentSlot,
          Map<String, dynamic>>(slotsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntent.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntent(
      name: map['name'] == null ? null : map['name'] as String,
      slots: map['slots'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntentSlot>(
              map['slots'],
              (value) =>
                  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntentSlot
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
