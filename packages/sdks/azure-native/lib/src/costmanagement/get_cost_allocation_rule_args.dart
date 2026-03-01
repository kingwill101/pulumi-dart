// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_get_cost_allocation_rule_args_doc}
/// Arguments for getCostAllocationRule.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_get_cost_allocation_rule_args_doc}
class GetCostAllocationRuleArgs {
  /// BillingAccount ID
  final pulumi.Input<String> billingAccountId;
  /// Cost allocation rule name. The name cannot include spaces or any non alphanumeric characters other than '_' and '-'. The max length is 260 characters.
  final pulumi.Input<String> ruleName;

  /// Creates a new [GetCostAllocationRuleArgs].
  /// [billingAccountId] BillingAccount ID
  /// [ruleName] Cost allocation rule name. The name cannot include spaces or any non alphanumeric characters other than '_' and '-'. The max length is 260 characters.
  GetCostAllocationRuleArgs({
    required pulumi.Output<String> billingAccountId,
    required pulumi.Output<String> ruleName,
  }) :
      billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
      ruleName = pulumi.Input.asInput<String>(ruleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'ruleName': ruleName,
    };
  }

  factory GetCostAllocationRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetCostAllocationRuleArgs(
      billingAccountId: pulumi.Output.create<String>(map['billingAccountId'] as String),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
    );
  }
}

