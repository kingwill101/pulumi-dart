// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_leaf_condition.dart';

/// An Activity Log Alert rule condition that is met when all its member conditions are met.
/// Each condition can be of one of the following types:
/// __Important__: Each type has its unique subset of properties. Properties from different types CANNOT exist in one condition.
/// * __Leaf Condition -__ must contain 'field' and either 'equals' or 'containsAny'.
/// _Please note, 'anyOf' should __not__ be set in a Leaf Condition._
/// * __AnyOf Condition -__ must contain __only__ 'anyOf' (which is an array of Leaf Conditions).
/// _Please note, 'field', 'equals' and 'containsAny' should __not__ be set in an AnyOf Condition._
class AlertRuleAnyOfOrLeafCondition {
  /// An Activity Log Alert rule condition that is met when at least one of its member leaf conditions are met.
  final pulumi.Input<List<AlertRuleLeafCondition>>? anyOf;
  /// The value of the event's field will be compared to the values in this array (case-insensitive) to determine if the condition is met.
  final pulumi.Input<List<String>>? containsAny;
  /// The value of the event's field will be compared to this value (case-insensitive) to determine if the condition is met.
  final pulumi.Input<String>? equals;
  /// The name of the Activity Log event's field that this condition will examine.
  /// The possible values for this field are (case-insensitive): 'resourceId', 'category', 'caller', 'level', 'operationName', 'resourceGroup', 'resourceProvider', 'status', 'subStatus', 'resourceType', or anything beginning with 'properties'.
  final pulumi.Input<String>? field;

  /// Creates a new [AlertRuleAnyOfOrLeafCondition].
  /// [anyOf] An Activity Log Alert rule condition that is met when at least one of its member leaf conditions are met.
  /// [containsAny] The value of the event's field will be compared to the values in this array (case-insensitive) to determine if the condition is met.
  /// [equals] The value of the event's field will be compared to this value (case-insensitive) to determine if the condition is met.
  /// [field] The name of the Activity Log event's field that this condition will examine.
  AlertRuleAnyOfOrLeafCondition({
    this.anyOf,
    this.containsAny,
    this.equals,
    this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anyOf': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleLeafCondition>, List<Map<String, dynamic>>>(anyOf, (value) => pulumi.Input.encodeList<AlertRuleLeafCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containsAny': ?containsAny,
      'equals': ?equals,
      'field': ?field,
    };
  }

  factory AlertRuleAnyOfOrLeafCondition.fromMap(Map<String, dynamic> map) {
    return AlertRuleAnyOfOrLeafCondition(
      anyOf: map['anyOf'] == null ? null : (pulumi.Input.decodeList<AlertRuleLeafCondition>(map['anyOf'], (value) => AlertRuleLeafCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      containsAny: map['containsAny'] == null ? null : ((map['containsAny'] as List).cast<String>()).input(),
      equals: map['equals'] == null ? null : (map['equals'] as String).input(),
      field: map['field'] == null ? null : (map['field'] as String).input(),
    );
  }
}

