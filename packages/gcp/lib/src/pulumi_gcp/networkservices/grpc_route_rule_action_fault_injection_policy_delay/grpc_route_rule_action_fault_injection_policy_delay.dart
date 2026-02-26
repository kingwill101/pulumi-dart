// ignore_for_file: unused_element, unnecessary_cast

class GrpcRouteRuleActionFaultInjectionPolicyDelay {
  /// Specify a fixed delay before forwarding the request.
  final String? fixedDelay;

  /// The percentage of traffic on which delay will be injected.
  final int? percentage;

  GrpcRouteRuleActionFaultInjectionPolicyDelay({
    this.fixedDelay,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fixedDelayValue = fixedDelay;
    if (fixedDelayValue != null) {
      map['fixedDelay'] = fixedDelayValue;
    }
    final percentageValue = percentage;
    if (percentageValue != null) {
      map['percentage'] = percentageValue;
    }
    return map;
  }

  factory GrpcRouteRuleActionFaultInjectionPolicyDelay.fromMap(
      Map<String, dynamic> map) {
    return GrpcRouteRuleActionFaultInjectionPolicyDelay(
      fixedDelay:
          map['fixedDelay'] == null ? null : map['fixedDelay'] as String,
      percentage: map['percentage'] == null ? null : map['percentage'] as int,
    );
  }
}
