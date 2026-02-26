// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../target_group_health_check/target_group_health_check.dart';
import '../target_group_stickiness/target_group_stickiness.dart';
import '../target_group_target_failover/target_group_target_failover.dart';
import '../target_group_target_group_health/target_group_target_group_health.dart';
import '../target_group_target_health_state/target_group_target_health_state.dart';

/// The set of arguments for TargetGroup.
class TargetGroupArgs {
  /// Whether to terminate connections at the end of the deregistration timeout on Network Load Balancers. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#deregistration-delay) for more information. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? connectionTermination;

  /// Amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds. The default value is 300 seconds.
  final Input<int>? deregistrationDelay;

  /// Health Check configuration block. Detailed below.
  final Input<TargetGroupHealthCheck>? healthCheck;

  /// The type of IP addresses used by the target group, only supported when target type is set to <span pulumi-lang-nodejs="`ip`" pulumi-lang-dotnet="`Ip`" pulumi-lang-go="`ip`" pulumi-lang-python="`ip`" pulumi-lang-yaml="`ip`" pulumi-lang-java="`ip`">`ip`</span>. Possible values are <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span> or <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>.
  final Input<String>? ipAddressType;

  /// Whether the request and response headers exchanged between the load balancer and the Lambda function include arrays of values or strings. Only applies when <span pulumi-lang-nodejs="`targetType`" pulumi-lang-dotnet="`TargetType`" pulumi-lang-go="`targetType`" pulumi-lang-python="`target_type`" pulumi-lang-yaml="`targetType`" pulumi-lang-java="`targetType`">`target_type`</span> is <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span>. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? lambdaMultiValueHeadersEnabled;

  /// Determines how the load balancer selects targets when routing requests. Only applicable for Application Load Balancer Target Groups. The value is <span pulumi-lang-nodejs="`roundRobin`" pulumi-lang-dotnet="`RoundRobin`" pulumi-lang-go="`roundRobin`" pulumi-lang-python="`round_robin`" pulumi-lang-yaml="`roundRobin`" pulumi-lang-java="`roundRobin`">`round_robin`</span>, <span pulumi-lang-nodejs="`leastOutstandingRequests`" pulumi-lang-dotnet="`LeastOutstandingRequests`" pulumi-lang-go="`leastOutstandingRequests`" pulumi-lang-python="`least_outstanding_requests`" pulumi-lang-yaml="`leastOutstandingRequests`" pulumi-lang-java="`leastOutstandingRequests`">`least_outstanding_requests`</span>, or <span pulumi-lang-nodejs="`weightedRandom`" pulumi-lang-dotnet="`WeightedRandom`" pulumi-lang-go="`weightedRandom`" pulumi-lang-python="`weighted_random`" pulumi-lang-yaml="`weightedRandom`" pulumi-lang-java="`weightedRandom`">`weighted_random`</span>. The default is <span pulumi-lang-nodejs="`roundRobin`" pulumi-lang-dotnet="`RoundRobin`" pulumi-lang-go="`roundRobin`" pulumi-lang-python="`round_robin`" pulumi-lang-yaml="`roundRobin`" pulumi-lang-java="`roundRobin`">`round_robin`</span>.
  final Input<String>? loadBalancingAlgorithmType;

  /// Determines whether to enable target anomaly mitigation.  Target anomaly mitigation is only supported by the <span pulumi-lang-nodejs="`weightedRandom`" pulumi-lang-dotnet="`WeightedRandom`" pulumi-lang-go="`weightedRandom`" pulumi-lang-python="`weighted_random`" pulumi-lang-yaml="`weightedRandom`" pulumi-lang-java="`weightedRandom`">`weighted_random`</span> load balancing algorithm type.  See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#automatic-target-weights) for more information.  The value is `"on"` or `"off"`. The default is `"off"`.
  final Input<String>? loadBalancingAnomalyMitigation;

  /// Indicates whether cross zone load balancing is enabled. The value is `"true"`, `"false"` or `<span pulumi-lang-nodejs=""useLoadBalancerConfiguration"" pulumi-lang-dotnet=""UseLoadBalancerConfiguration"" pulumi-lang-go=""useLoadBalancerConfiguration"" pulumi-lang-python=""use_load_balancer_configuration"" pulumi-lang-yaml=""useLoadBalancerConfiguration"" pulumi-lang-java=""useLoadBalancerConfiguration"">"use_load_balancer_configuration"</span>`. The default is `<span pulumi-lang-nodejs=""useLoadBalancerConfiguration"" pulumi-lang-dotnet=""UseLoadBalancerConfiguration"" pulumi-lang-go=""useLoadBalancerConfiguration"" pulumi-lang-python=""use_load_balancer_configuration"" pulumi-lang-yaml=""useLoadBalancerConfiguration"" pulumi-lang-java=""useLoadBalancerConfiguration"">"use_load_balancer_configuration"</span>`.
  final Input<String>? loadBalancingCrossZoneEnabled;

  /// Name of the target group. If omitted, this provider will assign a random, unique name. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. Cannot be longer than 6 characters.
  final Input<String>? namePrefix;

  /// Port on which targets receive traffic, unless overridden when registering a specific target. Required when <span pulumi-lang-nodejs="`targetType`" pulumi-lang-dotnet="`TargetType`" pulumi-lang-go="`targetType`" pulumi-lang-python="`target_type`" pulumi-lang-yaml="`targetType`" pulumi-lang-java="`targetType`">`target_type`</span> is <span pulumi-lang-nodejs="`instance`" pulumi-lang-dotnet="`Instance`" pulumi-lang-go="`instance`" pulumi-lang-python="`instance`" pulumi-lang-yaml="`instance`" pulumi-lang-java="`instance`">`instance`</span>, <span pulumi-lang-nodejs="`ip`" pulumi-lang-dotnet="`Ip`" pulumi-lang-go="`ip`" pulumi-lang-python="`ip`" pulumi-lang-yaml="`ip`" pulumi-lang-java="`ip`">`ip`</span> or <span pulumi-lang-nodejs="`alb`" pulumi-lang-dotnet="`Alb`" pulumi-lang-go="`alb`" pulumi-lang-python="`alb`" pulumi-lang-yaml="`alb`" pulumi-lang-java="`alb`">`alb`</span>. Does not apply when <span pulumi-lang-nodejs="`targetType`" pulumi-lang-dotnet="`TargetType`" pulumi-lang-go="`targetType`" pulumi-lang-python="`target_type`" pulumi-lang-yaml="`targetType`" pulumi-lang-java="`targetType`">`target_type`</span> is <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span>.
  final Input<int>? port;

  /// Whether client IP preservation is enabled. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#client-ip-preservation) for more information.
  final Input<String>? preserveClientIp;

  /// Protocol to use for routing traffic to the targets.
  /// Should be one of `GENEVE`, `HTTP`, `HTTPS`, `TCP`, `TCP_UDP`, `TLS`, `UDP`, `QUIC`, or `TCP_QUIC`.
  /// Required when <span pulumi-lang-nodejs="`targetType`" pulumi-lang-dotnet="`TargetType`" pulumi-lang-go="`targetType`" pulumi-lang-python="`target_type`" pulumi-lang-yaml="`targetType`" pulumi-lang-java="`targetType`">`target_type`</span> is <span pulumi-lang-nodejs="`instance`" pulumi-lang-dotnet="`Instance`" pulumi-lang-go="`instance`" pulumi-lang-python="`instance`" pulumi-lang-yaml="`instance`" pulumi-lang-java="`instance`">`instance`</span>, <span pulumi-lang-nodejs="`ip`" pulumi-lang-dotnet="`Ip`" pulumi-lang-go="`ip`" pulumi-lang-python="`ip`" pulumi-lang-yaml="`ip`" pulumi-lang-java="`ip`">`ip`</span>, or <span pulumi-lang-nodejs="`alb`" pulumi-lang-dotnet="`Alb`" pulumi-lang-go="`alb`" pulumi-lang-python="`alb`" pulumi-lang-yaml="`alb`" pulumi-lang-java="`alb`">`alb`</span>.
  /// Does not apply when <span pulumi-lang-nodejs="`targetType`" pulumi-lang-dotnet="`TargetType`" pulumi-lang-go="`targetType`" pulumi-lang-python="`target_type`" pulumi-lang-yaml="`targetType`" pulumi-lang-java="`targetType`">`target_type`</span> is <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span>.
  final Input<String>? protocol;

  /// Only applicable when <span pulumi-lang-nodejs="`protocol`" pulumi-lang-dotnet="`Protocol`" pulumi-lang-go="`protocol`" pulumi-lang-python="`protocol`" pulumi-lang-yaml="`protocol`" pulumi-lang-java="`protocol`">`protocol`</span> is `HTTP` or `HTTPS`. The protocol version. Specify `GRPC` to send requests to targets using gRPC. Specify `HTTP2` to send requests to targets using HTTP/2. The default is `HTTP1`, which sends requests to targets using HTTP/1.1
  final Input<String>? protocolVersion;

  /// Whether to enable support for proxy protocol v2 on Network Load Balancers. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#proxy-protocol) for more information. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? proxyProtocolV2;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Amount time for targets to warm up before the load balancer sends them a full share of requests. The range is 30-900 seconds or 0 to disable. The default value is 0 seconds.
  final Input<int>? slowStart;

  /// Stickiness configuration block. Detailed below.
  final Input<TargetGroupStickiness>? stickiness;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Port on which the target control agent and application load balancer exchange management traffic for the target optimizer feature. Only applicable for Application Load Balancer target groups when <span pulumi-lang-nodejs="`targetType`" pulumi-lang-dotnet="`TargetType`" pulumi-lang-go="`targetType`" pulumi-lang-python="`target_type`" pulumi-lang-yaml="`targetType`" pulumi-lang-java="`targetType`">`target_type`</span> is <span pulumi-lang-nodejs="`instance`" pulumi-lang-dotnet="`Instance`" pulumi-lang-go="`instance`" pulumi-lang-python="`instance`" pulumi-lang-yaml="`instance`" pulumi-lang-java="`instance`">`instance`</span> or <span pulumi-lang-nodejs="`ip`" pulumi-lang-dotnet="`Ip`" pulumi-lang-go="`ip`" pulumi-lang-python="`ip`" pulumi-lang-yaml="`ip`" pulumi-lang-java="`ip`">`ip`</span>.
  final Input<int>? targetControlPort;

  /// Target failover block. Only applicable for Gateway Load Balancer target groups. See<span pulumi-lang-nodejs=" targetFailover " pulumi-lang-dotnet=" TargetFailover " pulumi-lang-go=" targetFailover " pulumi-lang-python=" target_failover " pulumi-lang-yaml=" targetFailover " pulumi-lang-java=" targetFailover "> target_failover </span>for more information.
  final Input<List<TargetGroupTargetFailover>>? targetFailovers;

  /// Target health requirements block. See<span pulumi-lang-nodejs=" targetGroupHealth " pulumi-lang-dotnet=" TargetGroupHealth " pulumi-lang-go=" targetGroupHealth " pulumi-lang-python=" target_group_health " pulumi-lang-yaml=" targetGroupHealth " pulumi-lang-java=" targetGroupHealth "> target_group_health </span>for more information.
  final Input<TargetGroupTargetGroupHealth>? targetGroupHealth;

  /// Target health state block. Only applicable for Network Load Balancer target groups when <span pulumi-lang-nodejs="`protocol`" pulumi-lang-dotnet="`Protocol`" pulumi-lang-go="`protocol`" pulumi-lang-python="`protocol`" pulumi-lang-yaml="`protocol`" pulumi-lang-java="`protocol`">`protocol`</span> is `TCP` or `TLS`. See<span pulumi-lang-nodejs=" targetHealthState " pulumi-lang-dotnet=" TargetHealthState " pulumi-lang-go=" targetHealthState " pulumi-lang-python=" target_health_state " pulumi-lang-yaml=" targetHealthState " pulumi-lang-java=" targetHealthState "> target_health_state </span>for more information.
  final Input<List<TargetGroupTargetHealthState>>? targetHealthStates;

  /// Type of target that you must specify when registering targets with this target group.
  /// See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_CreateTargetGroup.html) for supported values.
  /// The default is <span pulumi-lang-nodejs="`instance`" pulumi-lang-dotnet="`Instance`" pulumi-lang-go="`instance`" pulumi-lang-python="`instance`" pulumi-lang-yaml="`instance`" pulumi-lang-java="`instance`">`instance`</span>.
  ///
  /// Note that you can't specify targets for a target group using both instance IDs and IP addresses.
  ///
  /// If the target type is <span pulumi-lang-nodejs="`ip`" pulumi-lang-dotnet="`Ip`" pulumi-lang-go="`ip`" pulumi-lang-python="`ip`" pulumi-lang-yaml="`ip`" pulumi-lang-java="`ip`">`ip`</span>, specify IP addresses from the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't specify publicly routable IP addresses.
  ///
  /// Network Load Balancers do not support the <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span> target type.
  ///
  /// Application Load Balancers do not support the <span pulumi-lang-nodejs="`alb`" pulumi-lang-dotnet="`Alb`" pulumi-lang-go="`alb`" pulumi-lang-python="`alb`" pulumi-lang-yaml="`alb`" pulumi-lang-java="`alb`">`alb`</span> target type.
  final Input<String>? targetType;

  /// Identifier of the VPC in which to create the target group. Required when <span pulumi-lang-nodejs="`targetType`" pulumi-lang-dotnet="`TargetType`" pulumi-lang-go="`targetType`" pulumi-lang-python="`target_type`" pulumi-lang-yaml="`targetType`" pulumi-lang-java="`targetType`">`target_type`</span> is <span pulumi-lang-nodejs="`instance`" pulumi-lang-dotnet="`Instance`" pulumi-lang-go="`instance`" pulumi-lang-python="`instance`" pulumi-lang-yaml="`instance`" pulumi-lang-java="`instance`">`instance`</span>, <span pulumi-lang-nodejs="`ip`" pulumi-lang-dotnet="`Ip`" pulumi-lang-go="`ip`" pulumi-lang-python="`ip`" pulumi-lang-yaml="`ip`" pulumi-lang-java="`ip`">`ip`</span> or <span pulumi-lang-nodejs="`alb`" pulumi-lang-dotnet="`Alb`" pulumi-lang-go="`alb`" pulumi-lang-python="`alb`" pulumi-lang-yaml="`alb`" pulumi-lang-java="`alb`">`alb`</span>. Does not apply when <span pulumi-lang-nodejs="`targetType`" pulumi-lang-dotnet="`TargetType`" pulumi-lang-go="`targetType`" pulumi-lang-python="`target_type`" pulumi-lang-yaml="`targetType`" pulumi-lang-java="`targetType`">`target_type`</span> is <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span>.
  final Input<String>? vpcId;

  TargetGroupArgs({
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
      map['healthCheck'] = Input.mapOptionalInputValue<TargetGroupHealthCheck,
          Map<String, dynamic>>(healthCheckValue, (value) => value.toMap());
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
      map['stickiness'] = Input.mapOptionalInputValue<TargetGroupStickiness,
          Map<String, dynamic>>(stickinessValue, (value) => value.toMap());
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
      map['targetFailovers'] = Input.mapOptionalInputValue<
              List<TargetGroupTargetFailover>, List<Map<String, dynamic>>>(
          targetFailoversValue,
          (value) =>
              Input.encodeList<TargetGroupTargetFailover, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final targetGroupHealthValue = targetGroupHealth;
    if (targetGroupHealthValue != null) {
      map['targetGroupHealth'] = Input.mapOptionalInputValue<
              TargetGroupTargetGroupHealth, Map<String, dynamic>>(
          targetGroupHealthValue, (value) => value.toMap());
    }
    final targetHealthStatesValue = targetHealthStates;
    if (targetHealthStatesValue != null) {
      map['targetHealthStates'] = Input.mapOptionalInputValue<
              List<TargetGroupTargetHealthState>, List<Map<String, dynamic>>>(
          targetHealthStatesValue,
          (value) => Input.encodeList<TargetGroupTargetHealthState,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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

  factory TargetGroupArgs.fromMap(Map<String, dynamic> map) {
    return TargetGroupArgs(
      connectionTermination:
          Input.asOptionalInput<bool>(map['connectionTermination']),
      deregistrationDelay:
          Input.asOptionalInput<int>(map['deregistrationDelay']),
      healthCheck:
          Input.asOptionalInput<TargetGroupHealthCheck>(map['healthCheck']),
      ipAddressType: Input.asOptionalInput<String>(map['ipAddressType']),
      lambdaMultiValueHeadersEnabled:
          Input.asOptionalInput<bool>(map['lambdaMultiValueHeadersEnabled']),
      loadBalancingAlgorithmType:
          Input.asOptionalInput<String>(map['loadBalancingAlgorithmType']),
      loadBalancingAnomalyMitigation:
          Input.asOptionalInput<String>(map['loadBalancingAnomalyMitigation']),
      loadBalancingCrossZoneEnabled:
          Input.asOptionalInput<String>(map['loadBalancingCrossZoneEnabled']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      port: Input.asOptionalInput<int>(map['port']),
      preserveClientIp: Input.asOptionalInput<String>(map['preserveClientIp']),
      protocol: Input.asOptionalInput<String>(map['protocol']),
      protocolVersion: Input.asOptionalInput<String>(map['protocolVersion']),
      proxyProtocolV2: Input.asOptionalInput<bool>(map['proxyProtocolV2']),
      region: Input.asOptionalInput<String>(map['region']),
      slowStart: Input.asOptionalInput<int>(map['slowStart']),
      stickiness:
          Input.asOptionalInput<TargetGroupStickiness>(map['stickiness']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetControlPort: Input.asOptionalInput<int>(map['targetControlPort']),
      targetFailovers: Input.asOptionalInput<List<TargetGroupTargetFailover>>(
          map['targetFailovers']),
      targetGroupHealth: Input.asOptionalInput<TargetGroupTargetGroupHealth>(
          map['targetGroupHealth']),
      targetHealthStates:
          Input.asOptionalInput<List<TargetGroupTargetHealthState>>(
              map['targetHealthStates']),
      targetType: Input.asOptionalInput<String>(map['targetType']),
      vpcId: Input.asOptionalInput<String>(map['vpcId']),
    );
  }
}
