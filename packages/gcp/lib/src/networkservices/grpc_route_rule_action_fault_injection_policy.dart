// ignore_for_file: unused_element, unnecessary_cast

import 'grpc_route_rule_action_fault_injection_policy_abort.dart';
import 'grpc_route_rule_action_fault_injection_policy_delay.dart';

class GrpcRouteRuleActionFaultInjectionPolicy {
  /// Specification of how client requests are aborted as part of fault injection before being sent to a destination.
  /// Structure is documented below.
  final GrpcRouteRuleActionFaultInjectionPolicyAbort? abort;

  /// Specification of how client requests are delayed as part of fault injection before being sent to a destination.
  /// Structure is documented below.
  final GrpcRouteRuleActionFaultInjectionPolicyDelay? delay;

  /// Creates a new [GrpcRouteRuleActionFaultInjectionPolicy].
  /// [abort] Specification of how client requests are aborted as part of fault injection before being sent to a destination.
  /// [delay] Specification of how client requests are delayed as part of fault injection before being sent to a destination.
  GrpcRouteRuleActionFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final abortValue = abort;
    if (abortValue != null) {
      map['abort'] = abortValue.toMap();
    }
    final delayValue = delay;
    if (delayValue != null) {
      map['delay'] = delayValue.toMap();
    }
    return map;
  }

  factory GrpcRouteRuleActionFaultInjectionPolicy.fromMap(
      Map<String, dynamic> map) {
    return GrpcRouteRuleActionFaultInjectionPolicy(
      abort: map['abort'] == null
          ? null
          : GrpcRouteRuleActionFaultInjectionPolicyAbort.fromMap(
              (map['abort'] as Map).cast<String, dynamic>()),
      delay: map['delay'] == null
          ? null
          : GrpcRouteRuleActionFaultInjectionPolicyDelay.fromMap(
              (map['delay'] as Map).cast<String, dynamic>()),
    );
  }
}
