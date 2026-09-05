// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_policy_policy_statement_condition_boolean_expression.dart';
import 'traffic_policy_policy_statement_condition_ip_expression.dart';
import 'traffic_policy_policy_statement_condition_ipv6_expression.dart';
import 'traffic_policy_policy_statement_condition_string_expression.dart';
import 'traffic_policy_policy_statement_condition_tls_expression.dart';

class TrafficPolicyPolicyStatementCondition {
  /// Boolean comparison. See `booleanExpression` Block below.
  final pulumi.Input<TrafficPolicyPolicyStatementConditionBooleanExpression?>? booleanExpression;
  /// IPv4 address comparison. See `ipExpression` Block below.
  final pulumi.Input<TrafficPolicyPolicyStatementConditionIpExpression?>? ipExpression;
  /// IPv6 address comparison. See `ipv6Expression` Block below.
  final pulumi.Input<TrafficPolicyPolicyStatementConditionIpv6Expression?>? ipv6Expression;
  /// String comparison. See `stringExpression` Block below.
  final pulumi.Input<TrafficPolicyPolicyStatementConditionStringExpression?>? stringExpression;
  /// TLS policy comparison. See `tlsExpression` Block below.
  final pulumi.Input<TrafficPolicyPolicyStatementConditionTlsExpression?>? tlsExpression;

  /// Creates a new [TrafficPolicyPolicyStatementCondition].
  /// [booleanExpression] Boolean comparison. See `booleanExpression` Block below.
  /// [ipExpression] IPv4 address comparison. See `ipExpression` Block below.
  /// [ipv6Expression] IPv6 address comparison. See `ipv6Expression` Block below.
  /// [stringExpression] String comparison. See `stringExpression` Block below.
  /// [tlsExpression] TLS policy comparison. See `tlsExpression` Block below.
  const TrafficPolicyPolicyStatementCondition({
    this.booleanExpression,
    this.ipExpression,
    this.ipv6Expression,
    this.stringExpression,
    this.tlsExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanExpression': ?pulumi.Input.mapOptionalInputValue<TrafficPolicyPolicyStatementConditionBooleanExpression, Map<String, dynamic>>(booleanExpression, (value) => value.toMap()),
      'ipExpression': ?pulumi.Input.mapOptionalInputValue<TrafficPolicyPolicyStatementConditionIpExpression, Map<String, dynamic>>(ipExpression, (value) => value.toMap()),
      'ipv6Expression': ?pulumi.Input.mapOptionalInputValue<TrafficPolicyPolicyStatementConditionIpv6Expression, Map<String, dynamic>>(ipv6Expression, (value) => value.toMap()),
      'stringExpression': ?pulumi.Input.mapOptionalInputValue<TrafficPolicyPolicyStatementConditionStringExpression, Map<String, dynamic>>(stringExpression, (value) => value.toMap()),
      'tlsExpression': ?pulumi.Input.mapOptionalInputValue<TrafficPolicyPolicyStatementConditionTlsExpression, Map<String, dynamic>>(tlsExpression, (value) => value.toMap()),
    };
  }

  factory TrafficPolicyPolicyStatementCondition.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyPolicyStatementCondition(
      booleanExpression: (() { final guardedValue = map['booleanExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficPolicyPolicyStatementConditionBooleanExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipExpression: (() { final guardedValue = map['ipExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficPolicyPolicyStatementConditionIpExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipv6Expression: (() { final guardedValue = map['ipv6Expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficPolicyPolicyStatementConditionIpv6Expression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringExpression: (() { final guardedValue = map['stringExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficPolicyPolicyStatementConditionStringExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tlsExpression: (() { final guardedValue = map['tlsExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficPolicyPolicyStatementConditionTlsExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
