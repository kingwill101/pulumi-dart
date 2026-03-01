// ignore_for_file: unused_element, unnecessary_cast

import 'urlmap_path_matcher_route_rule_route_action_fault_injection_policy_delay_fixed_delay.dart';

class URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyDelay {
  /// Specifies the value of the fixed delay interval.
  /// Structure is documented below.
  final URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyDelayFixedDelay?
  fixedDelay;

  /// The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection.
  /// The value must be between 0.0 and 100.0 inclusive.
  final double? percentage;

  /// Creates a new [URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyDelay].
  /// [fixedDelay] Specifies the value of the fixed delay interval.
  /// [percentage] The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection.
  URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyDelay({
    this.fixedDelay,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': ?fixedDelay == null ? null : fixedDelay!.toMap(),
      'percentage': ?percentage,
    };
  }

  factory URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyDelay.fromMap(
    Map<String, dynamic> map,
  ) {
    return URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyDelay(
      fixedDelay: map['fixedDelay'] == null
          ? null
          : URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyDelayFixedDelay.fromMap(
              (map['fixedDelay'] as Map).cast<String, dynamic>(),
            ),
      percentage: map['percentage'] == null
          ? null
          : map['percentage'] as double,
    );
  }
}
