// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_policy_policy_statement_condition.dart';

class TrafficPolicyPolicyStatement {
  /// Action applied when all conditions match. Valid values are `ALLOW` and `DENY`.
  final pulumi.Input<String> action;
  /// Conditions evaluated by the statement. See `condition` Block below.
  final pulumi.Input<List<TrafficPolicyPolicyStatementCondition>>? conditions;

  /// Creates a new [TrafficPolicyPolicyStatement].
  /// [action] Action applied when all conditions match. Valid values are `ALLOW` and `DENY`.
  /// [conditions] Conditions evaluated by the statement. See `condition` Block below.
  const TrafficPolicyPolicyStatement({
    required this.action,
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<TrafficPolicyPolicyStatementCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<TrafficPolicyPolicyStatementCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TrafficPolicyPolicyStatement.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyPolicyStatement(
      action: pulumi.Input.fromValue(map['action'] as String),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrafficPolicyPolicyStatementCondition>(guardedValue, (value) => TrafficPolicyPolicyStatementCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
