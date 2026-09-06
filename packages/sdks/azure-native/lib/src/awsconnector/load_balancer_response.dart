// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LoadBalancer
class LoadBalancerResponse {
  /// The name of the container (as it appears in a container definition) to associate with the load balancer. You need to specify the container name when configuring the target group for an Amazon ECS load balancer.
  final pulumi.Input<String?>? containerName;
  /// The port on the container to associate with the load balancer. This port must correspond to a ``containerPort`` in the task definition the tasks in the service are using. For tasks that use the EC2 launch type, the container instance they're launched on must allow ingress traffic on the ``hostPort`` of the port mapping.
  final pulumi.Input<int?>? containerPort;
  /// The name of the load balancer to associate with the Amazon ECS service or task set. If you are using an Application Load Balancer or a Network Load Balancer the load balancer name parameter should be omitted.
  final pulumi.Input<String?>? loadBalancerName;
  /// The full Amazon Resource Name (ARN) of the Elastic Load Balancing target group or groups associated with a service or task set. A target group ARN is only specified when using an Application Load Balancer or Network Load Balancer.  For services using the ``ECS`` deployment controller, you can specify one or multiple target groups. For more information, see [Registering multiple target groups with a service](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html) in the *Amazon Elastic Container Service Developer Guide*. For services using the ``CODE_DEPLOY`` deployment controller, you're required to define two target groups for the load balancer. For more information, see [Blue/green deployment with CodeDeploy](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-bluegreen.html) in the *Amazon Elastic Container Service Developer Guide*.  If your service's task definition uses the ``awsvpc`` network mode, you must choose ``ip`` as the target type, not ``instance``. Do this when creating your target groups because tasks that use the ``awsvpc`` network mode are associated with an elastic network interface, not an Amazon EC2 instance. This network mode is required for the Fargate launch type.
  final pulumi.Input<String?>? targetGroupArn;

  /// Creates a new [LoadBalancerResponse].
  /// [containerName] The name of the container (as it appears in a container definition) to associate with the load balancer. You need to specify the container name when configuring the target group for an Amazon ECS load balancer.
  /// [containerPort] The port on the container to associate with the load balancer. This port must correspond to a ``containerPort`` in the task definition the tasks in the service are using. For tasks that use the EC2 launch type, the container instance they're launched on must allow ingress traffic on the ``hostPort`` of the port mapping.
  /// [loadBalancerName] The name of the load balancer to associate with the Amazon ECS service or task set. If you are using an Application Load Balancer or a Network Load Balancer the load balancer name parameter should be omitted.
  /// [targetGroupArn] The full Amazon Resource Name (ARN) of the Elastic Load Balancing target group or groups associated with a service or task set. A target group ARN is only specified when using an Application Load Balancer or Network Load Balancer.  For services using the ``ECS`` deployment controller, you can specify one or multiple target groups. For more information, see [Registering multiple target groups with a service](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html) in the *Amazon Elastic Container Service Developer Guide*. For services using the ``CODE_DEPLOY`` deployment controller, you're required to define two target groups for the load balancer. For more information, see [Blue/green deployment with CodeDeploy](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-bluegreen.html) in the *Amazon Elastic Container Service Developer Guide*.  If your service's task definition uses the ``awsvpc`` network mode, you must choose ``ip`` as the target type, not ``instance``. Do this when creating your target groups because tasks that use the ``awsvpc`` network mode are associated with an elastic network interface, not an Amazon EC2 instance. This network mode is required for the Fargate launch type.
  const LoadBalancerResponse({
    this.containerName,
    this.containerPort,
    this.loadBalancerName,
    this.targetGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'containerPort': ?containerPort,
      'loadBalancerName': ?loadBalancerName,
      'targetGroupArn': ?targetGroupArn,
    };
  }

  factory LoadBalancerResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerResponse(
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerPort: (() { final guardedValue = map['containerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      loadBalancerName: (() { final guardedValue = map['loadBalancerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetGroupArn: (() { final guardedValue = map['targetGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
