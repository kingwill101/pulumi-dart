// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerLoadBalancerBillingConfig {
  /// Pay Type
  final pulumi.Input<String> payType;

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
      payType: pulumi.Input.fromValue(map['payType'] as String),
    );
  }
}

