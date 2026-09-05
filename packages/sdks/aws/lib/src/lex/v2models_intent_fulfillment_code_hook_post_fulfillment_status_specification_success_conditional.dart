// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_conditional_conditional_branch.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_conditional_default_branch.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional {
  /// Whether a conditional branch is active. When active is false, the conditions are not evaluated.
  final pulumi.Input<bool> active;
  /// Configuration blocks for conditional branches. A conditional branch is made up of a condition, a response and a next step. The response and next step are executed when the condition is true. See `conditionalBranch`.
  final pulumi.Input<List<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranch>?>? conditionalBranches;
  /// Configuration block for the conditional branch that should be followed when the conditions for other branches are not satisfied. A branch is made up of a condition, a response and a next step. See `defaultBranch`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranch?>? defaultBranch;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional].
  /// [active] Whether a conditional branch is active. When active is false, the conditions are not evaluated.
  /// [conditionalBranches] Configuration blocks for conditional branches. A conditional branch is made up of a condition, a response and a next step. The response and next step are executed when the condition is true. See `conditionalBranch`.
  /// [defaultBranch] Configuration block for the conditional branch that should be followed when the conditions for other branches are not satisfied. A branch is made up of a condition, a response and a next step. See `defaultBranch`.
  const V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional({
    required this.active,
    this.conditionalBranches,
    this.defaultBranch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'conditionalBranches': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranch>, List<Map<String, dynamic>>>(conditionalBranches, (value) => pulumi.Input.encodeList<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultBranch': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranch, Map<String, dynamic>>(defaultBranch, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional(
      active: pulumi.Input.fromValue(map['active'] as bool),
      conditionalBranches: (() { final guardedValue = map['conditionalBranches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranch>(guardedValue, (value) => V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultBranch: (() { final guardedValue = map['defaultBranch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
