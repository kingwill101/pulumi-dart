// ignore_for_file: unused_element, unnecessary_cast

import 'http_route_rule_action_fault_injection_policy_abort.dart';
import 'http_route_rule_action_fault_injection_policy_delay.dart';

class HttpRouteRuleActionFaultInjectionPolicy {
  /// Specification of how client requests are aborted as part of fault injection before being sent to a destination.
  /// Structure is documented below.
  final HttpRouteRuleActionFaultInjectionPolicyAbort? abort;

  /// Specification of how client requests are delayed as part of fault injection before being sent to a destination.
  /// Structure is documented below.
  final HttpRouteRuleActionFaultInjectionPolicyDelay? delay;

  /// Creates a new [HttpRouteRuleActionFaultInjectionPolicy].
  /// [abort] Specification of how client requests are aborted as part of fault injection before being sent to a destination.
  /// [delay] Specification of how client requests are delayed as part of fault injection before being sent to a destination.
  HttpRouteRuleActionFaultInjectionPolicy({this.abort, this.delay});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': ?abort == null ? null : abort!.toMap(),
      'delay': ?delay == null ? null : delay!.toMap(),
    };
  }

  factory HttpRouteRuleActionFaultInjectionPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return HttpRouteRuleActionFaultInjectionPolicy(
      abort: map['abort'] == null
          ? null
          : HttpRouteRuleActionFaultInjectionPolicyAbort.fromMap(
              (map['abort'] as Map).cast<String, dynamic>(),
            ),
      delay: map['delay'] == null
          ? null
          : HttpRouteRuleActionFaultInjectionPolicyDelay.fromMap(
              (map['delay'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
