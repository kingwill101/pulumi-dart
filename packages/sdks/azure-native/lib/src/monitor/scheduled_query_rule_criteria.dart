// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition.dart';

/// The rule criteria that defines the conditions of the scheduled query rule.
class ScheduledQueryRuleCriteria {
  /// A list of conditions to evaluate against the specified scopes
  final pulumi.Input<List<Condition>?>? allOf;

  /// Creates a new [ScheduledQueryRuleCriteria].
  /// [allOf] A list of conditions to evaluate against the specified scopes
  const ScheduledQueryRuleCriteria({
    this.allOf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allOf': ?pulumi.Input.mapOptionalInputValue<List<Condition>, List<Map<String, dynamic>>>(allOf, (value) => pulumi.Input.encodeList<Condition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScheduledQueryRuleCriteria.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRuleCriteria(
      allOf: (() { final guardedValue = map['allOf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Condition>(guardedValue, (value) => Condition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
