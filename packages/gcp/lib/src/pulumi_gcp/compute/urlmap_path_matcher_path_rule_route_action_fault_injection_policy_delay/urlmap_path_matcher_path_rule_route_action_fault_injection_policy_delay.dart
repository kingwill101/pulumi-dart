// ignore_for_file: unused_element, unnecessary_cast

import '../urlmap_path_matcher_path_rule_route_action_fault_injection_policy_delay_fixed_delay/urlmap_path_matcher_path_rule_route_action_fault_injection_policy_delay_fixed_delay.dart';

class URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay {
  /// Specifies the value of the fixed delay interval.
  /// Structure is documented below.
  final URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelay
      fixedDelay;

  /// The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection.
  /// The value must be between 0.0 and 100.0 inclusive.
  final double percentage;

  URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay({
    required this.fixedDelay,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fixedDelay'] = fixedDelay.toMap();
    map['percentage'] = percentage;
    return map;
  }

  factory URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay.fromMap(
      Map<String, dynamic> map) {
    return URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay(
      fixedDelay:
          URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelay
              .fromMap((map['fixedDelay'] as Map).cast<String, dynamic>()),
      percentage: map['percentage'] as double,
    );
  }
}
