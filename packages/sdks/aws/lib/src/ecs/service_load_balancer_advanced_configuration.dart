// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceLoadBalancerAdvancedConfiguration {
  /// ARN of the alternate target group to use for Blue/Green deployments.
  final pulumi.Input<String> alternateTargetGroupArn;
  /// ARN of the listener rule that routes production traffic.
  final pulumi.Input<String> productionListenerRule;
  /// ARN of the IAM role that allows ECS to manage the target groups.
  final pulumi.Input<String> roleArn;
  /// ARN of the listener rule that routes test traffic.
  final pulumi.Input<String>? testListenerRule;

  /// Creates a new [ServiceLoadBalancerAdvancedConfiguration].
  /// [alternateTargetGroupArn] ARN of the alternate target group to use for Blue/Green deployments.
  /// [productionListenerRule] ARN of the listener rule that routes production traffic.
  /// [roleArn] ARN of the IAM role that allows ECS to manage the target groups.
  /// [testListenerRule] ARN of the listener rule that routes test traffic.
  ServiceLoadBalancerAdvancedConfiguration({
    required this.alternateTargetGroupArn,
    required this.productionListenerRule,
    required this.roleArn,
    this.testListenerRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateTargetGroupArn': alternateTargetGroupArn,
      'productionListenerRule': productionListenerRule,
      'roleArn': roleArn,
      'testListenerRule': ?testListenerRule,
    };
  }

  factory ServiceLoadBalancerAdvancedConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceLoadBalancerAdvancedConfiguration(
      alternateTargetGroupArn: (map['alternateTargetGroupArn'] as String).input(),
      productionListenerRule: (map['productionListenerRule'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
      testListenerRule: map['testListenerRule'] == null ? null : ((map['testListenerRule'] as String).input()).input(),
    );
  }
}

