// ignore_for_file: unused_element, unnecessary_cast

class TaskSetLoadBalancer {
  /// The name of the container to associate with the load balancer (as it appears in a container definition).
  final String containerName;

  /// The port on the container to associate with the load balancer. Defaults to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> if not specified.
  ///
  /// > **Note:** Specifying multiple <span pulumi-lang-nodejs="`loadBalancer`" pulumi-lang-dotnet="`LoadBalancer`" pulumi-lang-go="`loadBalancer`" pulumi-lang-python="`load_balancer`" pulumi-lang-yaml="`loadBalancer`" pulumi-lang-java="`loadBalancer`">`load_balancer`</span> configurations is still not supported by AWS for ECS task set.
  final int? containerPort;

  /// The name of the ELB (Classic) to associate with the service.
  final String? loadBalancerName;

  /// The ARN of the Load Balancer target group to associate with the service.
  final String? targetGroupArn;

  TaskSetLoadBalancer({
    required this.containerName,
    this.containerPort,
    this.loadBalancerName,
    this.targetGroupArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerName'] = containerName;
    final containerPortValue = containerPort;
    if (containerPortValue != null) {
      map['containerPort'] = containerPortValue;
    }
    final loadBalancerNameValue = loadBalancerName;
    if (loadBalancerNameValue != null) {
      map['loadBalancerName'] = loadBalancerNameValue;
    }
    final targetGroupArnValue = targetGroupArn;
    if (targetGroupArnValue != null) {
      map['targetGroupArn'] = targetGroupArnValue;
    }
    return map;
  }

  factory TaskSetLoadBalancer.fromMap(Map<String, dynamic> map) {
    return TaskSetLoadBalancer(
      containerName: map['containerName'] as String,
      containerPort:
          map['containerPort'] == null ? null : map['containerPort'] as int,
      loadBalancerName: map['loadBalancerName'] == null
          ? null
          : map['loadBalancerName'] as String,
      targetGroupArn: map['targetGroupArn'] == null
          ? null
          : map['targetGroupArn'] as String,
    );
  }
}
