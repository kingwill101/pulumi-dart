// ignore_for_file: unused_element, unnecessary_cast

import '../policy_spec_rule_condition/policy_spec_rule_condition.dart';
import '../policy_spec_rule_values/policy_spec_rule_values.dart';

class PolicySpecRule {
  /// Setting this to `"TRUE"` means that all values are allowed. This field can be set only in Policies for list constraints.
  final String? allowAll;

  /// A condition which determines whether this rule is used in the evaluation of the policy. When set, the `expression` field in the `Expr' must include from 1 to 10 subexpressions, joined by the "||" or "&&" operators. Each subexpression must be of the form "resource.matchTag('/tag_key_short_name, 'tag_value_short_name')". or "resource.matchTagId('tagKeys/key_id', 'tagValues/value_id')". where key_name and value_name are the resource names for Label Keys and Values. These names are available from the Tag Manager Service. An example expression is: "resource.matchTag('123456789/environment, 'prod')". or "resource.matchTagId('tagKeys/123', 'tagValues/456')".
  /// Structure is documented below.
  final PolicySpecRuleCondition? condition;

  /// Setting this to `"TRUE"` means that all values are denied. This field can be set only in Policies for list constraints.
  final String? denyAll;

  /// If `"TRUE"`, then the `Policy` is enforced. If `"FALSE"`, then any configuration is acceptable. This field can be set only in Policies for boolean constraints.
  final String? enforce;

  /// Optional. Required for Managed Constraints if parameters defined in constraints. Pass parameter values when policy enforcement is enabled. Ensure that parameter value types match those defined in the constraint definition. For example: { \"allowedLocations\" : [\"us-east1\", \"us-west1\"], \"allowAll\" : true }
  final String? parameters;

  /// List of values to be used for this policy rule. This field can be set only in policies for list constraints.
  /// Structure is documented below.
  final PolicySpecRuleValues? values;

  PolicySpecRule({
    this.allowAll,
    this.condition,
    this.denyAll,
    this.enforce,
    this.parameters,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowAllValue = allowAll;
    if (allowAllValue != null) {
      map['allowAll'] = allowAllValue;
    }
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue.toMap();
    }
    final denyAllValue = denyAll;
    if (denyAllValue != null) {
      map['denyAll'] = denyAllValue;
    }
    final enforceValue = enforce;
    if (enforceValue != null) {
      map['enforce'] = enforceValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue.toMap();
    }
    return map;
  }

  factory PolicySpecRule.fromMap(Map<String, dynamic> map) {
    return PolicySpecRule(
      allowAll: map['allowAll'] == null ? null : map['allowAll'] as String,
      condition: map['condition'] == null
          ? null
          : PolicySpecRuleCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      denyAll: map['denyAll'] == null ? null : map['denyAll'] as String,
      enforce: map['enforce'] == null ? null : map['enforce'] as String,
      parameters:
          map['parameters'] == null ? null : map['parameters'] as String,
      values: map['values'] == null
          ? null
          : PolicySpecRuleValues.fromMap(
              (map['values'] as Map).cast<String, dynamic>()),
    );
  }
}
