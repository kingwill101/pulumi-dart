// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_timeout_conditional_conditional_branch.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_timeout_conditional_default_branch.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditional {
  /// Whether a conditional branch is active. When active is false, the conditions are not evaluated.
  final bool active;
  /// Configuration blocks for conditional branches. A conditional branch is made up of a condition, a response and a next step. The response and next step are executed when the condition is true. See `conditional_branch`.
  final List<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranch>? conditionalBranches;
  /// Configuration block for the conditional branch that should be followed when the conditions for other branches are not satisfied. A branch is made up of a condition, a response and a next step. See `default_branch`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranch? defaultBranch;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditional].
  /// [active] Whether a conditional branch is active. When active is false, the conditions are not evaluated.
  /// [conditionalBranches] Configuration blocks for conditional branches. A conditional branch is made up of a condition, a response and a next step. The response and next step are executed when the condition is true. See `conditional_branch`.
  /// [defaultBranch] Configuration block for the conditional branch that should be followed when the conditions for other branches are not satisfied. A branch is made up of a condition, a response and a next step. See `default_branch`.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditional({
    required this.active,
    this.conditionalBranches,
    this.defaultBranch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'conditionalBranches': ?conditionalBranches == null ? null : pulumi.Input.encodeList<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranch, Map<String, dynamic>>(conditionalBranches!, (value) => value.toMap()),
      'defaultBranch': ?defaultBranch == null ? null : defaultBranch!.toMap(),
    };
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditional.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditional(
      active: map['active'] as bool,
      conditionalBranches: map['conditionalBranches'] == null ? null : pulumi.Input.decodeList<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranch>(map['conditionalBranches'], (value) => V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranch.fromMap((value as Map).cast<String, dynamic>())),
      defaultBranch: map['defaultBranch'] == null ? null : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranch.fromMap((map['defaultBranch'] as Map).cast<String, dynamic>()),
    );
  }
}

