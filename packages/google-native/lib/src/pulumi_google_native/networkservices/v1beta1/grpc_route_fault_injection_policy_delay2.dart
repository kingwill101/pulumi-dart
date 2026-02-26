// ignore_for_file: unused_element, unnecessary_cast

/// Specification of how client requests are delayed as part of fault injection before being sent to a destination.
class GrpcRouteFaultInjectionPolicyDelay2 {
  /// Specify a fixed delay before forwarding the request.
  final String? fixedDelay;

  /// The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  final int? percentage;

  GrpcRouteFaultInjectionPolicyDelay2({
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

  factory GrpcRouteFaultInjectionPolicyDelay2.fromMap(
      Map<String, dynamic> map) {
    return GrpcRouteFaultInjectionPolicyDelay2(
      fixedDelay:
          map['fixedDelay'] == null ? null : map['fixedDelay'] as String,
      percentage: map['percentage'] == null ? null : map['percentage'] as int,
    );
  }
}
