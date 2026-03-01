// ignore_for_file: unused_element, unnecessary_cast


class LoadBalancerLoadBalancerBillingConfig {
  /// Pay Type
  final String payType;

  /// Creates a new [LoadBalancerLoadBalancerBillingConfig].
  /// [payType] Pay Type
  LoadBalancerLoadBalancerBillingConfig({
    required this.payType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payType': payType,
    };
  }

  factory LoadBalancerLoadBalancerBillingConfig.fromMap(Map<String, dynamic> map) {
    return LoadBalancerLoadBalancerBillingConfig(
      payType: map['payType'] as String,
    );
  }
}

