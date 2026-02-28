// ignore_for_file: unused_element, unnecessary_cast


/// Specification of how client requests are delayed as part of fault injection before being sent to a destination.
class GrpcRouteFaultInjectionPolicyDelayNetworkservicesV1beta1 {
  /// Specify a fixed delay before forwarding the request.
  final String? fixedDelay;
  /// The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  final int? percentage;

  /// Creates a new [GrpcRouteFaultInjectionPolicyDelayNetworkservicesV1beta1].
  /// [fixedDelay] Specify a fixed delay before forwarding the request.
  /// [percentage] The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  GrpcRouteFaultInjectionPolicyDelayNetworkservicesV1beta1({
    this.fixedDelay,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': ?fixedDelay,
      'percentage': ?percentage,
    };
  }

  factory GrpcRouteFaultInjectionPolicyDelayNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return GrpcRouteFaultInjectionPolicyDelayNetworkservicesV1beta1(
      fixedDelay: map['fixedDelay'] == null ? null : map['fixedDelay'] as String,
      percentage: map['percentage'] == null ? null : map['percentage'] as int,
    );
  }
}

