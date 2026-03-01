// ignore_for_file: unused_element, unnecessary_cast

class GetServiceLoadBalancerAdvancedConfiguration {
  /// ARN of the alternate target group to use for Blue/Green deployments.
  final String alternateTargetGroupArn;

  /// ARN of the listener rule that routes production traffic.
  final String productionListenerRule;

  /// ARN of the IAM role that allows ECS to manage the target groups.
  final String roleArn;

  /// ARN of the listener rule that routes test traffic.
  final String testListenerRule;

  /// Creates a new [GetServiceLoadBalancerAdvancedConfiguration].
  /// [alternateTargetGroupArn] ARN of the alternate target group to use for Blue/Green deployments.
  /// [productionListenerRule] ARN of the listener rule that routes production traffic.
  /// [roleArn] ARN of the IAM role that allows ECS to manage the target groups.
  /// [testListenerRule] ARN of the listener rule that routes test traffic.
  GetServiceLoadBalancerAdvancedConfiguration({
    required this.alternateTargetGroupArn,
    required this.productionListenerRule,
    required this.roleArn,
    required this.testListenerRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateTargetGroupArn': alternateTargetGroupArn,
      'productionListenerRule': productionListenerRule,
      'roleArn': roleArn,
      'testListenerRule': testListenerRule,
    };
  }

  factory GetServiceLoadBalancerAdvancedConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceLoadBalancerAdvancedConfiguration(
      alternateTargetGroupArn: map['alternateTargetGroupArn'] as String,
      productionListenerRule: map['productionListenerRule'] as String,
      roleArn: map['roleArn'] as String,
      testListenerRule: map['testListenerRule'] as String,
    );
  }
}
