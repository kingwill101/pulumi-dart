// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceLoadBalancerAdvancedConfiguration {
  /// ARN of the alternate target group to use for Blue/Green deployments.
  final pulumi.Input<String> alternateTargetGroupArn;
  /// ARN of the listener rule that routes production traffic.
  final pulumi.Input<String> productionListenerRule;
  /// ARN of the IAM role that allows ECS to manage the target groups.
  final pulumi.Input<String> roleArn;
  /// ARN of the listener rule that routes test traffic.
  final pulumi.Input<String> testListenerRule;

  /// Creates a new [GetServiceLoadBalancerAdvancedConfiguration].
  /// [alternateTargetGroupArn] ARN of the alternate target group to use for Blue/Green deployments.
  /// [productionListenerRule] ARN of the listener rule that routes production traffic.
  /// [roleArn] ARN of the IAM role that allows ECS to manage the target groups.
  /// [testListenerRule] ARN of the listener rule that routes test traffic.
  const GetServiceLoadBalancerAdvancedConfiguration({
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

  factory GetServiceLoadBalancerAdvancedConfiguration.fromMap(Map<String, dynamic> map) {
    return GetServiceLoadBalancerAdvancedConfiguration(
      alternateTargetGroupArn: pulumi.Input.fromValue(map['alternateTargetGroupArn'] as String),
      productionListenerRule: pulumi.Input.fromValue(map['productionListenerRule'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      testListenerRule: pulumi.Input.fromValue(map['testListenerRule'] as String),
    );
  }
}
