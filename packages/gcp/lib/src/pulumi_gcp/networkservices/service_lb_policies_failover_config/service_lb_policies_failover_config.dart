// ignore_for_file: unused_element, unnecessary_cast

class ServiceLbPoliciesFailoverConfig {
  /// Optional. The percentage threshold that a load balancer will begin to send traffic to failover backends. If the percentage of endpoints in a MIG/NEG is smaller than this value, traffic would be sent to failover backends if possible. This field should be set to a value between 1 and 99. The default value is 50 for Global external HTTP(S) load balancer (classic) and Proxyless service mesh, and 70 for others.
  final int failoverHealthThreshold;

  ServiceLbPoliciesFailoverConfig({
    required this.failoverHealthThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failoverHealthThreshold'] = failoverHealthThreshold;
    return map;
  }

  factory ServiceLbPoliciesFailoverConfig.fromMap(Map<String, dynamic> map) {
    return ServiceLbPoliciesFailoverConfig(
      failoverHealthThreshold: map['failoverHealthThreshold'] as int,
    );
  }
}
