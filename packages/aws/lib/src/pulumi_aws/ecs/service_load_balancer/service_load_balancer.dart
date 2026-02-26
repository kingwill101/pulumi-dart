// ignore_for_file: unused_element, unnecessary_cast

import '../service_load_balancer_advanced_configuration/service_load_balancer_advanced_configuration.dart';

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
  /// > **Version note:** Multiple <span pulumi-lang-nodejs="`loadBalancer`" pulumi-lang-dotnet="`LoadBalancer`" pulumi-lang-go="`loadBalancer`" pulumi-lang-python="`load_balancer`" pulumi-lang-yaml="`loadBalancer`" pulumi-lang-java="`loadBalancer`">`load_balancer`</span> configuration block support was added in version 2.22.0 of the provider. This allows configuration of [ECS service support for multiple target groups](https://aws.amazon.com/about-aws/whats-new/2019/07/amazon-ecs-services-now-support-multiple-load-balancer-target-groups/).
  final String? targetGroupArn;

  ServiceLoadBalancer({
    this.advancedConfiguration,
    required this.containerName,
    required this.containerPort,
    this.elbName,
    this.targetGroupArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedConfigurationValue = advancedConfiguration;
    if (advancedConfigurationValue != null) {
      map['advancedConfiguration'] = advancedConfigurationValue.toMap();
    }
    map['containerName'] = containerName;
    map['containerPort'] = containerPort;
    final elbNameValue = elbName;
    if (elbNameValue != null) {
      map['elbName'] = elbNameValue;
    }
    final targetGroupArnValue = targetGroupArn;
    if (targetGroupArnValue != null) {
      map['targetGroupArn'] = targetGroupArnValue;
    }
    return map;
  }

  factory ServiceLoadBalancer.fromMap(Map<String, dynamic> map) {
    return ServiceLoadBalancer(
      advancedConfiguration: map['advancedConfiguration'] == null
          ? null
          : ServiceLoadBalancerAdvancedConfiguration.fromMap(
              (map['advancedConfiguration'] as Map).cast<String, dynamic>()),
      containerName: map['containerName'] as String,
      containerPort: map['containerPort'] as int,
      elbName: map['elbName'] == null ? null : map['elbName'] as String,
      targetGroupArn: map['targetGroupArn'] == null
          ? null
          : map['targetGroupArn'] as String,
    );
  }
}
