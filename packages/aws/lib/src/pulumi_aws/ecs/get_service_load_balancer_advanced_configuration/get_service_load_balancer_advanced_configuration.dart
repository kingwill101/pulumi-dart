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

  GetServiceLoadBalancerAdvancedConfiguration({
    required this.alternateTargetGroupArn,
    required this.productionListenerRule,
    required this.roleArn,
    required this.testListenerRule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alternateTargetGroupArn'] = alternateTargetGroupArn;
    map['productionListenerRule'] = productionListenerRule;
    map['roleArn'] = roleArn;
    map['testListenerRule'] = testListenerRule;
    return map;
  }

  factory GetServiceLoadBalancerAdvancedConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetServiceLoadBalancerAdvancedConfiguration(
      alternateTargetGroupArn: map['alternateTargetGroupArn'] as String,
      productionListenerRule: map['productionListenerRule'] as String,
      roleArn: map['roleArn'] as String,
      testListenerRule: map['testListenerRule'] as String,
    );
  }
}
