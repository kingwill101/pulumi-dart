// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_conditional_conditional_branch/v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_conditional_conditional_branch.dart';
import '../v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_conditional_default_branch/v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_conditional_default_branch.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional {
  /// Whether a conditional branch is active. When active is false, the conditions are not evaluated.
  final bool active;

  /// Configuration blocks for conditional branches. A conditional branch is made up of a condition, a response and a next step. The response and next step are executed when the condition is true. See `conditional_branch`.
  final List<
          V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranch>?
      conditionalBranches;

  /// Configuration block for the conditional branch that should be followed when the conditions for other branches are not satisfied. A branch is made up of a condition, a response and a next step. See `default_branch`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranch?
      defaultBranch;

  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional({
    required this.active,
    this.conditionalBranches,
    this.defaultBranch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['active'] = active;
    final conditionalBranchesValue = conditionalBranches;
    if (conditionalBranchesValue != null) {
      map['conditionalBranches'] = pulumi.Input.encodeList<
          V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranch,
          Map<String,
              dynamic>>(conditionalBranchesValue, (value) => value.toMap());
    }
    final defaultBranchValue = defaultBranch;
    if (defaultBranchValue != null) {
      map['defaultBranch'] = defaultBranchValue.toMap();
    }
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional(
      active: map['active'] as bool,
      conditionalBranches: map['conditionalBranches'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranch>(
              map['conditionalBranches'],
              (value) =>
                  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranch
                      .fromMap((value as Map).cast<String, dynamic>())),
      defaultBranch: map['defaultBranch'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranch
              .fromMap((map['defaultBranch'] as Map).cast<String, dynamic>()),
    );
  }
}
