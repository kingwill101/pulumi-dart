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

  factory ServiceLoadBalancerAdvancedConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceLoadBalancerAdvancedConfiguration(
      alternateTargetGroupArn: pulumi.Input.fromValue(
        map['alternateTargetGroupArn'] as String,
      ),
      productionListenerRule: pulumi.Input.fromValue(
        map['productionListenerRule'] as String,
      ),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      testListenerRule: (() {
        final guardedValue = map['testListenerRule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
