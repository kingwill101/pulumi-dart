// ignore_for_file: unused_element, unnecessary_cast

import 'urlmap_path_matcher_path_rule_route_action_fault_injection_policy_abort.dart';
import 'urlmap_path_matcher_path_rule_route_action_fault_injection_policy_delay.dart';

class URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicy {
  /// The specification for how client requests are aborted as part of fault injection.
  /// Structure is documented below.
  final URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort? abort;

  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  /// Structure is documented below.
  final URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay? delay;

  /// Creates a new [URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicy].
  /// [abort] The specification for how client requests are aborted as part of fault injection.
  /// [delay] The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicy({
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

  factory URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicy.fromMap(
      Map<String, dynamic> map) {
    return URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicy(
      abort: map['abort'] == null
          ? null
          : URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort
              .fromMap((map['abort'] as Map).cast<String, dynamic>()),
      delay: map['delay'] == null
          ? null
          : URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay
              .fromMap((map['delay'] as Map).cast<String, dynamic>()),
    );
  }
}
