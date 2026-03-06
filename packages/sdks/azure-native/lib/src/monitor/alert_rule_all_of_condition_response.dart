// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_any_of_or_leaf_condition_response.dart';

/// An Activity Log Alert rule condition that is met when all its member conditions are met.
class AlertRuleAllOfConditionResponse {
  /// The list of Activity Log Alert rule conditions.
  final pulumi.Input<List<AlertRuleAnyOfOrLeafConditionResponse>> allOf;

  /// Creates a new [AlertRuleAllOfConditionResponse].
  /// [allOf] The list of Activity Log Alert rule conditions.
  const AlertRuleAllOfConditionResponse({
    required this.allOf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allOf': pulumi.Input.mapInputValue<List<AlertRuleAnyOfOrLeafConditionResponse>, List<Map<String, dynamic>>>(allOf, (value) => pulumi.Input.encodeList<AlertRuleAnyOfOrLeafConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AlertRuleAllOfConditionResponse.fromMap(Map<String, dynamic> map) {
    return AlertRuleAllOfConditionResponse(
      allOf: pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleAnyOfOrLeafConditionResponse>(map['allOf']!, (value) => AlertRuleAnyOfOrLeafConditionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

