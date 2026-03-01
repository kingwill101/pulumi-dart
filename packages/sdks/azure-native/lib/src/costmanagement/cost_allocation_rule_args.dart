// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_allocation_rule_properties.dart';

/// {@template pulumi_costmanagement_cost_allocation_rule_args_doc}
/// The set of arguments for CostAllocationRule.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_cost_allocation_rule_args_doc}
class CostAllocationRuleArgs {
  /// BillingAccount ID
  final pulumi.Input<String> billingAccountId;
  /// Cost allocation rule properties
  final pulumi.Input<CostAllocationRuleProperties>? properties;
  /// Cost allocation rule name. The name cannot include spaces or any non alphanumeric characters other than '_' and '-'. The max length is 260 characters.
  final pulumi.Input<String>? ruleName;

  /// Creates a new [CostAllocationRuleArgs].
  /// [billingAccountId] BillingAccount ID
  /// [properties] Cost allocation rule properties
  /// [ruleName] Cost allocation rule name. The name cannot include spaces or any non alphanumeric characters other than '_' and '-'. The max length is 260 characters.
  CostAllocationRuleArgs({
    required pulumi.Output<String> billingAccountId,
    pulumi.Output<CostAllocationRuleProperties>? properties,
    pulumi.Output<String>? ruleName,
  }) :
      billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
      properties = pulumi.Input.asOptionalInput<CostAllocationRuleProperties>(properties),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'properties': ?pulumi.Input.mapOptionalInputValue<CostAllocationRuleProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'ruleName': ?ruleName,
    };
  }

  factory CostAllocationRuleArgs.fromMap(Map<String, dynamic> map) {
    return CostAllocationRuleArgs(
      billingAccountId: pulumi.Output.create<String>(map['billingAccountId'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<CostAllocationRuleProperties>(CostAllocationRuleProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
    );
  }
}

