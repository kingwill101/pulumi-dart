// ignore_for_file: unused_element, unnecessary_cast

/// Provides a Target Group resource for use with Load Balancer resources.
///
/// > **Note:** `aws.alb.TargetGroup` is known as `aws.lb.TargetGroup`. The functionality is identical.
///
/// ## Example Usage
///
/// ### Instance Target Group
///
///
///
/// ### IP Target Group
///
///
///
/// ### Lambda Target Group
///
///
///
/// ### ALB Target Group
///
///
///
/// ### Target group with unhealthy connection termination disabled
///
///
///
/// ### Target group with health requirements
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the target group.
///
/// Using `pulumi import`, import Target Groups using their ARN. For example:
///
/// % pulumi import aws_lb_target_group.app_front_end arn:aws:elasticloadbalancing:us-west-2:187416307283:targetgroup/app-front-end/20cfe21448b66314
class TargetGroup {
  /// Whether to terminate connections at the end of the deregistration timeout on Network Load Balancers. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#deregistration-delay) for more information. Default is `false`.
  final bool? connectionTermination;

  /// Amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds. The default value is 300 seconds.
  final int? deregistrationDelay;

  /// Health Check configuration block. Detailed below.
  final Map<String, dynamic>? healthCheck;

  /// The type of IP addresses used by the target group, only supported when target type is set to `ip`. Possible values are `ipv4` or `ipv6`.
  final String? ipAddressType;

  /// Whether the request and response headers exchanged between the load balancer and the Lambda function include arrays of values or strings. Only applies when `target_type` is `lambda`. Default is `false`.
  final bool? lambdaMultiValueHeadersEnabled;

  /// Determines how the load balancer selects targets when routing requests. Only applicable for Application Load Balancer Target Groups. The value is `round_robin`, `least_outstanding_requests`, or `weighted_random`. The default is `round_robin`.
  final String? loadBalancingAlgorithmType;

  /// Determines whether to enable target anomaly mitigation.  Target anomaly mitigation is only supported by the `weighted_random` load balancing algorithm type.  See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#automatic-target-weights) for more information.  The value is `"on"` or `"off"`. The default is `"off"`.
  final String? loadBalancingAnomalyMitigation;

  /// Indicates whether cross zone load balancing is enabled. The value is `"true"`, `"false"` or `"use_load_balancer_configuration"`. The default is `"use_load_balancer_configuration"`.
  final String? loadBalancingCrossZoneEnabled;

  /// Name of the target group. If omitted, this provider will assign a random, unique name. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
  final String? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`. Cannot be longer than 6 characters.
  final String? namePrefix;

  /// Port on which targets receive traffic, unless overridden when registering a specific target. Required when `target_type` is `instance`, `ip` or `alb`. Does not apply when `target_type` is `lambda`.
  final int? port;

  /// Whether client IP preservation is enabled. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#client-ip-preservation) for more information.
  final String? preserveClientIp;

  /// Protocol to use for routing traffic to the targets.
  /// Should be one of `GENEVE`, `HTTP`, `HTTPS`, `TCP`, `TCP_UDP`, `TLS`, or `UDP`.
  /// Required when `target_type` is `instance`, `ip`, or `alb`.
  /// Does not apply when `target_type` is `lambda`.
  final String? protocol;

  /// Only applicable when `protocol` is `HTTP` or `HTTPS`. The protocol version. Specify `GRPC` to send requests to targets using gRPC. Specify `HTTP2` to send requests to targets using HTTP/2. The default is `HTTP1`, which sends requests to targets using HTTP/1.1
  final String? protocolVersion;

  /// Whether to enable support for proxy protocol v2 on Network Load Balancers. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#proxy-protocol) for more information. Default is `false`.
  final bool? proxyProtocolV2;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String? region;

  /// Amount time for targets to warm up before the load balancer sends them a full share of requests. The range is 30-900 seconds or 0 to disable. The default value is 0 seconds.
  final int? slowStart;

  /// Stickiness configuration block. Detailed below.
  final Map<String, dynamic>? stickiness;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;

  /// Port on which the target control agent and application load balancer exchange management traffic for the target optimizer feature. Only applicable for Application Load Balancer target groups when `target_type` is `instance` or `ip`.
  final int? targetControlPort;

  /// Target failover block. Only applicable for Gateway Load Balancer target groups. See target_failover for more information.
  final List<Map<String, dynamic>>? targetFailovers;

  /// Target health requirements block. See target_group_health for more information.
  final Map<String, dynamic>? targetGroupHealth;

  /// Target health state block. Only applicable for Network Load Balancer target groups when `protocol` is `TCP` or `TLS`. See target_health_state for more information.
  final List<Map<String, dynamic>>? targetHealthStates;

  /// Type of target that you must specify when registering targets with this target group.
  /// See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_CreateTargetGroup.html) for supported values.
  /// The default is `instance`.
  ///
  /// Note that you can't specify targets for a target group using both instance IDs and IP addresses.
  ///
  /// If the target type is `ip`, specify IP addresses from the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't specify publicly routable IP addresses.
  ///
  /// Network Load Balancers do not support the `lambda` target type.
  ///
  /// Application Load Balancers do not support the `alb` target type.
  final String? targetType;

  /// Identifier of the VPC in which to create the target group. Required when `target_type` is `instance`, `ip` or `alb`. Does not apply when `target_type` is `lambda`.
  final String? vpcId;

  TargetGroup({
    this.connectionTermination,
    this.deregistrationDelay,
    this.healthCheck,
    this.ipAddressType,
    this.lambdaMultiValueHeadersEnabled,
    this.loadBalancingAlgorithmType,
    this.loadBalancingAnomalyMitigation,
    this.loadBalancingCrossZoneEnabled,
    this.name,
    this.namePrefix,
    this.port,
    this.preserveClientIp,
    this.protocol,
    this.protocolVersion,
    this.proxyProtocolV2,
    this.region,
    this.slowStart,
    this.stickiness,
    this.tags,
    this.targetControlPort,
    this.targetFailovers,
    this.targetGroupHealth,
    this.targetHealthStates,
    this.targetType,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionTerminationValue = connectionTermination;
    if (connectionTerminationValue != null) {
      map['connectionTermination'] = connectionTerminationValue;
    }
    final deregistrationDelayValue = deregistrationDelay;
    if (deregistrationDelayValue != null) {
      map['deregistrationDelay'] = deregistrationDelayValue;
    }
    final healthCheckValue = healthCheck;
    if (healthCheckValue != null) {
      map['healthCheck'] = healthCheckValue;
    }
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    final lambdaMultiValueHeadersEnabledValue = lambdaMultiValueHeadersEnabled;
    if (lambdaMultiValueHeadersEnabledValue != null) {
      map['lambdaMultiValueHeadersEnabled'] =
          lambdaMultiValueHeadersEnabledValue;
    }
    final loadBalancingAlgorithmTypeValue = loadBalancingAlgorithmType;
    if (loadBalancingAlgorithmTypeValue != null) {
      map['loadBalancingAlgorithmType'] = loadBalancingAlgorithmTypeValue;
    }
    final loadBalancingAnomalyMitigationValue = loadBalancingAnomalyMitigation;
    if (loadBalancingAnomalyMitigationValue != null) {
      map['loadBalancingAnomalyMitigation'] =
          loadBalancingAnomalyMitigationValue;
    }
    final loadBalancingCrossZoneEnabledValue = loadBalancingCrossZoneEnabled;
    if (loadBalancingCrossZoneEnabledValue != null) {
      map['loadBalancingCrossZoneEnabled'] = loadBalancingCrossZoneEnabledValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final preserveClientIpValue = preserveClientIp;
    if (preserveClientIpValue != null) {
      map['preserveClientIp'] = preserveClientIpValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final protocolVersionValue = protocolVersion;
    if (protocolVersionValue != null) {
      map['protocolVersion'] = protocolVersionValue;
    }
    final proxyProtocolV2Value = proxyProtocolV2;
    if (proxyProtocolV2Value != null) {
      map['proxyProtocolV2'] = proxyProtocolV2Value;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final slowStartValue = slowStart;
    if (slowStartValue != null) {
      map['slowStart'] = slowStartValue;
    }
    final stickinessValue = stickiness;
    if (stickinessValue != null) {
      map['stickiness'] = stickinessValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final targetControlPortValue = targetControlPort;
    if (targetControlPortValue != null) {
      map['targetControlPort'] = targetControlPortValue;
    }
    final targetFailoversValue = targetFailovers;
    if (targetFailoversValue != null) {
      map['targetFailovers'] = targetFailoversValue;
    }
    final targetGroupHealthValue = targetGroupHealth;
    if (targetGroupHealthValue != null) {
      map['targetGroupHealth'] = targetGroupHealthValue;
    }
    final targetHealthStatesValue = targetHealthStates;
    if (targetHealthStatesValue != null) {
      map['targetHealthStates'] = targetHealthStatesValue;
    }
    final targetTypeValue = targetType;
    if (targetTypeValue != null) {
      map['targetType'] = targetTypeValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory TargetGroup.fromMap(Map<String, dynamic> map) {
    return TargetGroup(
      connectionTermination: map['connectionTermination'] == null
          ? null
          : map['connectionTermination'] as bool,
      deregistrationDelay: map['deregistrationDelay'] == null
          ? null
          : map['deregistrationDelay'] as int,
      healthCheck: map['healthCheck'] == null
          ? null
          : (map['healthCheck'] as Map).cast<String, dynamic>(),
      ipAddressType:
          map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      lambdaMultiValueHeadersEnabled:
          map['lambdaMultiValueHeadersEnabled'] == null
              ? null
              : map['lambdaMultiValueHeadersEnabled'] as bool,
      loadBalancingAlgorithmType: map['loadBalancingAlgorithmType'] == null
          ? null
          : map['loadBalancingAlgorithmType'] as String,
      loadBalancingAnomalyMitigation:
          map['loadBalancingAnomalyMitigation'] == null
              ? null
              : map['loadBalancingAnomalyMitigation'] as String,
      loadBalancingCrossZoneEnabled:
          map['loadBalancingCrossZoneEnabled'] == null
              ? null
              : map['loadBalancingCrossZoneEnabled'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      preserveClientIp: map['preserveClientIp'] == null
          ? null
          : map['preserveClientIp'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      protocolVersion: map['protocolVersion'] == null
          ? null
          : map['protocolVersion'] as String,
      proxyProtocolV2: map['proxyProtocolV2'] == null
          ? null
          : map['proxyProtocolV2'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      slowStart: map['slowStart'] == null ? null : map['slowStart'] as int,
      stickiness: map['stickiness'] == null
          ? null
          : (map['stickiness'] as Map).cast<String, dynamic>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      targetControlPort: map['targetControlPort'] == null
          ? null
          : map['targetControlPort'] as int,
      targetFailovers: map['targetFailovers'] == null
          ? null
          : (map['targetFailovers'] as List).cast<Map<String, dynamic>>(),
      targetGroupHealth: map['targetGroupHealth'] == null
          ? null
          : (map['targetGroupHealth'] as Map).cast<String, dynamic>(),
      targetHealthStates: map['targetHealthStates'] == null
          ? null
          : (map['targetHealthStates'] as List).cast<Map<String, dynamic>>(),
      targetType:
          map['targetType'] == null ? null : map['targetType'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
