// ignore_for_file: unused_element, unnecessary_cast

/// Option to specify health based failover behavior. This is not related to Network load balancer FailoverPolicy.
class ServiceLbPolicyFailoverConfig {
  /// Optional. The percentage threshold that a load balancer will begin to send traffic to failover backends. If the percentage of endpoints in a MIG/NEG is smaller than this value, traffic would be sent to failover backends if possible. This field should be set to a value between 1 and 99. The default value is 50 for Global external HTTP(S) load balancer (classic) and Proxyless service mesh, and 70 for others.
  final int? failoverHealthThreshold;

  ServiceLbPolicyFailoverConfig({
    this.failoverHealthThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final failoverHealthThresholdValue = failoverHealthThreshold;
    if (failoverHealthThresholdValue != null) {
      map['failoverHealthThreshold'] = failoverHealthThresholdValue;
    }
    return map;
  }

  factory ServiceLbPolicyFailoverConfig.fromMap(Map<String, dynamic> map) {
    return ServiceLbPolicyFailoverConfig(
      failoverHealthThreshold: map['failoverHealthThreshold'] == null
          ? null
          : map['failoverHealthThreshold'] as int,
    );
  }
}
