// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskSetLoadBalancer {
  /// The name of the container to associate with the load balancer (as it appears in a container definition).
  final pulumi.Input<String> containerName;

  /// The port on the container to associate with the load balancer. Defaults to `0` if not specified.
  ///
  /// &gt; **Note:** Specifying multiple `load_balancer` configurations is still not supported by AWS for ECS task set.
  final pulumi.Input<int>? containerPort;

  /// The name of the ELB (Classic) to associate with the service.
  final pulumi.Input<String>? loadBalancerName;

  /// The ARN of the Load Balancer target group to associate with the service.
  final pulumi.Input<String>? targetGroupArn;

  /// Creates a new [TaskSetLoadBalancer].
  /// [containerName] The name of the container to associate with the load balancer (as it appears in a container definition).
  /// [containerPort] The port on the container to associate with the load balancer. Defaults to `0` if not specified.
  /// [loadBalancerName] The name of the ELB (Classic) to associate with the service.
  /// [targetGroupArn] The ARN of the Load Balancer target group to associate with the service.
  TaskSetLoadBalancer({
    required this.containerName,
    this.containerPort,
    this.loadBalancerName,
    this.targetGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'containerPort': ?containerPort,
      'loadBalancerName': ?loadBalancerName,
      'targetGroupArn': ?targetGroupArn,
    };
  }

  factory TaskSetLoadBalancer.fromMap(Map<String, dynamic> map) {
    return TaskSetLoadBalancer(
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      containerPort: (() {
        final guardedValue = map['containerPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      loadBalancerName: (() {
        final guardedValue = map['loadBalancerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetGroupArn: (() {
        final guardedValue = map['targetGroupArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
