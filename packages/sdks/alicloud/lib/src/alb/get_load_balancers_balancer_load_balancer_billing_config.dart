// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersBalancerLoadBalancerBillingConfig {
  /// The billing method of the ALB instance.
  final pulumi.Input<String> payType;

  /// Creates a new [GetLoadBalancersBalancerLoadBalancerBillingConfig].
  /// [payType] The billing method of the ALB instance.
  const GetLoadBalancersBalancerLoadBalancerBillingConfig({
    required this.payType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payType': payType,
    };
  }

  factory GetLoadBalancersBalancerLoadBalancerBillingConfig.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancerLoadBalancerBillingConfig(
      payType: pulumi.Input.fromValue(map['payType'] as String),
    );
  }
}

