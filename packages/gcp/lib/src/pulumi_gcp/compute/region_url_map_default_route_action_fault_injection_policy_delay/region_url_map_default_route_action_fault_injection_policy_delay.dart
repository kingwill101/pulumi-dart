// ignore_for_file: unused_element, unnecessary_cast

import '../region_url_map_default_route_action_fault_injection_policy_delay_fixed_delay/region_url_map_default_route_action_fault_injection_policy_delay_fixed_delay.dart';

class RegionUrlMapDefaultRouteActionFaultInjectionPolicyDelay {
  /// Specifies the value of the fixed delay interval.
  /// Structure is documented below.
  final RegionUrlMapDefaultRouteActionFaultInjectionPolicyDelayFixedDelay?
      fixedDelay;

  /// The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection.
  /// The value must be between 0.0 and 100.0 inclusive.
  final double? percentage;

  RegionUrlMapDefaultRouteActionFaultInjectionPolicyDelay({
    this.fixedDelay,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fixedDelayValue = fixedDelay;
    if (fixedDelayValue != null) {
      map['fixedDelay'] = fixedDelayValue.toMap();
    }
    final percentageValue = percentage;
    if (percentageValue != null) {
      map['percentage'] = percentageValue;
    }
    return map;
  }

  factory RegionUrlMapDefaultRouteActionFaultInjectionPolicyDelay.fromMap(
      Map<String, dynamic> map) {
    return RegionUrlMapDefaultRouteActionFaultInjectionPolicyDelay(
      fixedDelay: map['fixedDelay'] == null
          ? null
          : RegionUrlMapDefaultRouteActionFaultInjectionPolicyDelayFixedDelay
              .fromMap((map['fixedDelay'] as Map).cast<String, dynamic>()),
      percentage:
          map['percentage'] == null ? null : map['percentage'] as double,
    );
  }
}
