// ignore_for_file: unused_element, unnecessary_cast

import 'urlmap_path_matcher_route_rule_route_action_fault_injection_policy_abort.dart';
import 'urlmap_path_matcher_route_rule_route_action_fault_injection_policy_delay.dart';

class URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy {
  /// The specification for how client requests are aborted as part of fault injection.
  /// Structure is documented below.
  final URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyAbort? abort;
  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  /// Structure is documented below.
  final URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyDelay? delay;

  /// Creates a new [URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy].
  /// [abort] The specification for how client requests are aborted as part of fault injection.
  /// [delay] The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': ?abort == null ? null : abort!.toMap(),
      'delay': ?delay == null ? null : delay!.toMap(),
    };
  }

  factory URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy(
      abort: map['abort'] == null ? null : URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyAbort.fromMap((map['abort'] as Map).cast<String, dynamic>()),
      delay: map['delay'] == null ? null : URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyDelay.fromMap((map['delay'] as Map).cast<String, dynamic>()),
    );
  }
}

