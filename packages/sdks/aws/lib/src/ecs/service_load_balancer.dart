// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_load_balancer_advanced_configuration.dart';

class ServiceLoadBalancer {
  /// Configuration block for Blue/Green deployment settings. Required when using `BLUE_GREEN` deployment strategy. See below.
  final pulumi.Input<ServiceLoadBalancerAdvancedConfiguration>? advancedConfiguration;
  /// Name of the container to associate with the load balancer (as it appears in a container definition).
  final pulumi.Input<String> containerName;
  /// Port on the container to associate with the load balancer.
  final pulumi.Input<int> containerPort;
  /// Name of the ELB (Classic) to associate with the service.
  final pulumi.Input<String>? elbName;
  /// ARN of the Load Balancer target group to associate with the service.
  ///
  /// > **Version note:** Multiple `load_balancer` configuration block support was added in version 2.22.0 of the provider. This allows configuration of [ECS service support for multiple target groups](https://aws.amazon.com/about-aws/whats-new/2019/07/amazon-ecs-services-now-support-multiple-load-balancer-target-groups/).
  final pulumi.Input<String>? targetGroupArn;

  /// Creates a new [ServiceLoadBalancer].
  /// [advancedConfiguration] Configuration block for Blue/Green deployment settings. Required when using `BLUE_GREEN` deployment strategy. See below.
  /// [containerName] Name of the container to associate with the load balancer (as it appears in a container definition).
  /// [containerPort] Port on the container to associate with the load balancer.
  /// [elbName] Name of the ELB (Classic) to associate with the service.
  /// [targetGroupArn] ARN of the Load Balancer target group to associate with the service.
  ServiceLoadBalancer({
    this.advancedConfiguration,
    required this.containerName,
    required this.containerPort,
    this.elbName,
    this.targetGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceLoadBalancerAdvancedConfiguration, Map<String, dynamic>>(advancedConfiguration, (value) => value.toMap()),
      'containerName': containerName,
      'containerPort': containerPort,
      'elbName': ?elbName,
      'targetGroupArn': ?targetGroupArn,
    };
  }

  factory ServiceLoadBalancer.fromMap(Map<String, dynamic> map) {
    return ServiceLoadBalancer(
      advancedConfiguration: map['advancedConfiguration'] == null ? null : ((ServiceLoadBalancerAdvancedConfiguration.fromMap((map['advancedConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      containerName: (map['containerName'] as String).input(),
      containerPort: (map['containerPort'] as int).input(),
      elbName: map['elbName'] == null ? null : ((map['elbName'] as String).input()).input(),
      targetGroupArn: map['targetGroupArn'] == null ? null : ((map['targetGroupArn'] as String).input()).input(),
    );
  }
}

