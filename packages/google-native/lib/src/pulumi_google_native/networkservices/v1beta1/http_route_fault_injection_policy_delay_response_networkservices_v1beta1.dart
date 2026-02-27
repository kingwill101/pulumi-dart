// ignore_for_file: unused_element, unnecessary_cast

/// Specification of how client requests are delayed as part of fault injection before being sent to a destination.
class HttpRouteFaultInjectionPolicyDelayResponseNetworkservicesV1beta1 {
  /// Specify a fixed delay before forwarding the request.
  final String fixedDelay;

  /// The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  final int percentage;

  HttpRouteFaultInjectionPolicyDelayResponseNetworkservicesV1beta1({
    required this.fixedDelay,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fixedDelay'] = fixedDelay;
    map['percentage'] = percentage;
    return map;
  }

  factory HttpRouteFaultInjectionPolicyDelayResponseNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteFaultInjectionPolicyDelayResponseNetworkservicesV1beta1(
      fixedDelay: map['fixedDelay'] as String,
      percentage: map['percentage'] as int,
    );
  }
}
