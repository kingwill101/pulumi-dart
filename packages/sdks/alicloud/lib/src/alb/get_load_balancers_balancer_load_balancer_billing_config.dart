// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancersBalancerLoadBalancerBillingConfig {
  /// The billing method of the ALB instance.
  final String payType;

  /// Creates a new [GetLoadBalancersBalancerLoadBalancerBillingConfig].
  /// [payType] The billing method of the ALB instance.
  GetLoadBalancersBalancerLoadBalancerBillingConfig({
    required this.payType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payType': payType,
    };
  }

  factory GetLoadBalancersBalancerLoadBalancerBillingConfig.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancerLoadBalancerBillingConfig(
      payType: map['payType'] as String,
    );
  }
}

