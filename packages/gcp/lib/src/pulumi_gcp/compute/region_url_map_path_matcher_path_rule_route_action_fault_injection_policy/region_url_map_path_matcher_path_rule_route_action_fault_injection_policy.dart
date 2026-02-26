// ignore_for_file: unused_element, unnecessary_cast

import '../region_url_map_path_matcher_path_rule_route_action_fault_injection_policy_abort/region_url_map_path_matcher_path_rule_route_action_fault_injection_policy_abort.dart';
import '../region_url_map_path_matcher_path_rule_route_action_fault_injection_policy_delay/region_url_map_path_matcher_path_rule_route_action_fault_injection_policy_delay.dart';

class RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicy {
  /// The specification for how client requests are aborted as part of fault injection.
  /// Structure is documented below.
  final RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort?
      abort;

  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  /// Structure is documented below.
  final RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay?
      delay;

  RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicy({
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

  factory RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicy.fromMap(
      Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicy(
      abort: map['abort'] == null
          ? null
          : RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort
              .fromMap((map['abort'] as Map).cast<String, dynamic>()),
      delay: map['delay'] == null
          ? null
          : RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay
              .fromMap((map['delay'] as Map).cast<String, dynamic>()),
    );
  }
}
