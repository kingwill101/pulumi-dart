// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Activity Log Alert rule condition that is met by comparing the field and value of an Activity Log event.
/// This condition must contain 'field' and either 'equals' or 'containsAny'.
class AlertRuleLeafCondition {
  /// The value of the event's field will be compared to the values in this array (case-insensitive) to determine if the condition is met.
  final pulumi.Input<List<String>?>? containsAny;
  /// The value of the event's field will be compared to this value (case-insensitive) to determine if the condition is met.
  final pulumi.Input<String?>? equals;
  /// The name of the Activity Log event's field that this condition will examine.
  /// The possible values for this field are (case-insensitive): 'resourceId', 'category', 'caller', 'level', 'operationName', 'resourceGroup', 'resourceProvider', 'status', 'subStatus', 'resourceType', or anything beginning with 'properties'.
  final pulumi.Input<String?>? field;

  /// Creates a new [AlertRuleLeafCondition].
  /// [containsAny] The value of the event's field will be compared to the values in this array (case-insensitive) to determine if the condition is met.
  /// [equals] The value of the event's field will be compared to this value (case-insensitive) to determine if the condition is met.
  /// [field] The name of the Activity Log event's field that this condition will examine.
  const AlertRuleLeafCondition({
    this.containsAny,
    this.equals,
    this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containsAny': ?containsAny,
      'equals': ?equals,
      'field': ?field,
    };
  }

  factory AlertRuleLeafCondition.fromMap(Map<String, dynamic> map) {
    return AlertRuleLeafCondition(
      containsAny: (() { final guardedValue = map['containsAny']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      equals: (() { final guardedValue = map['equals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
