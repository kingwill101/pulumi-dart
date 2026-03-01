// ignore_for_file: unused_element, unnecessary_cast

import 'region_url_map_path_matcher_route_rule_route_action_fault_injection_policy_abort.dart';
import 'region_url_map_path_matcher_route_rule_route_action_fault_injection_policy_delay.dart';

class RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy {
  /// The specification for how client requests are aborted as part of fault injection.
  /// Structure is documented below.
  final RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyAbort?
  abort;

  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  /// Structure is documented below.
  final RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyDelay?
  delay;

  /// Creates a new [RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy].
  /// [abort] The specification for how client requests are aborted as part of fault injection.
  /// [delay] The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': ?abort == null ? null : abort!.toMap(),
      'delay': ?delay == null ? null : delay!.toMap(),
    };
  }

  factory RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy(
      abort: map['abort'] == null
          ? null
          : RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyAbort.fromMap(
              (map['abort'] as Map).cast<String, dynamic>(),
            ),
      delay: map['delay'] == null
          ? null
          : RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyDelay.fromMap(
              (map['delay'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
