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
  const CostAllocationRuleArgs({
    required this.billingAccountId,
    this.properties,
    this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'properties': ?pulumi.Input.mapOptionalInputValue<CostAllocationRuleProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'ruleName': ?ruleName,
    };
  }

  factory CostAllocationRuleArgs.fromMap(Map<String, dynamic> map) {
    return CostAllocationRuleArgs(
      billingAccountId: pulumi.Input.fromValue(map['billingAccountId'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CostAllocationRuleProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

