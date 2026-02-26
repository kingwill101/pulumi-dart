// ignore_for_file: unused_element, unnecessary_cast

/// Specification of how client requests are delayed as part of fault injection before being sent to a destination.
class HttpRouteFaultInjectionPolicyDelayResponse2 {
  /// Specify a fixed delay before forwarding the request.
  final String fixedDelay;

  /// The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  final int percentage;

  HttpRouteFaultInjectionPolicyDelayResponse2({
    required this.fixedDelay,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fixedDelay'] = fixedDelay;
    map['percentage'] = percentage;
    return map;
  }

  factory HttpRouteFaultInjectionPolicyDelayResponse2.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteFaultInjectionPolicyDelayResponse2(
      fixedDelay: map['fixedDelay'] as String,
      percentage: map['percentage'] as int,
    );
  }
}
