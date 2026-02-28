// ignore_for_file: unused_element, unnecessary_cast

import 'service_load_balancer_advanced_configuration.dart';

class ServiceLoadBalancer {
  /// Configuration block for Blue/Green deployment settings. Required when using `BLUE_GREEN` deployment strategy. See below.
  final ServiceLoadBalancerAdvancedConfiguration? advancedConfiguration;
  /// Name of the container to associate with the load balancer (as it appears in a container definition).
  final String containerName;
  /// Port on the container to associate with the load balancer.
  final int containerPort;
  /// Name of the ELB (Classic) to associate with the service.
  final String? elbName;
  /// ARN of the Load Balancer target group to associate with the service.
  ///
  /// > **Version note:** Multiple `load_balancer` configuration block support was added in version 2.22.0 of the provider. This allows configuration of [ECS service support for multiple target groups](https://aws.amazon.com/about-aws/whats-new/2019/07/amazon-ecs-services-now-support-multiple-load-balancer-target-groups/).
  final String? targetGroupArn;

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
      'advancedConfiguration': ?advancedConfiguration == null ? null : advancedConfiguration!.toMap(),
      'containerName': containerName,
      'containerPort': containerPort,
      'elbName': ?elbName,
      'targetGroupArn': ?targetGroupArn,
    };
  }

  factory ServiceLoadBalancer.fromMap(Map<String, dynamic> map) {
    return ServiceLoadBalancer(
      advancedConfiguration: map['advancedConfiguration'] == null ? null : ServiceLoadBalancerAdvancedConfiguration.fromMap((map['advancedConfiguration'] as Map).cast<String, dynamic>()),
      containerName: map['containerName'] as String,
      containerPort: map['containerPort'] as int,
      elbName: map['elbName'] == null ? null : map['elbName'] as String,
      targetGroupArn: map['targetGroupArn'] == null ? null : map['targetGroupArn'] as String,
    );
  }
}

