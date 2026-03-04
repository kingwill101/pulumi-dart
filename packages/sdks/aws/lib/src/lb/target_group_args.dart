// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_group_health_check.dart';
import 'target_group_stickiness.dart';
import 'target_group_target_failover.dart';
import 'target_group_target_group_health.dart';
import 'target_group_target_health_state.dart';

/// {@template pulumi_lb_target_group_target_group_args_doc}
/// The set of arguments for TargetGroup.
/// {@endtemplate}
/// {@macro pulumi_lb_target_group_target_group_args_doc}
class TargetGroupArgs {
  /// Whether to terminate connections at the end of the deregistration timeout on Network Load Balancers. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#deregistration-delay) for more information. Default is `false`.
  final pulumi.Input<bool>? connectionTermination;

  /// Amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds. The default value is 300 seconds.
  final pulumi.Input<int>? deregistrationDelay;

  /// Health Check configuration block. Detailed below.
  final pulumi.Input<TargetGroupHealthCheck>? healthCheck;

  /// The type of IP addresses used by the target group, only supported when target type is set to `ip`. Possible values are `ipv4` or `ipv6`.
  final pulumi.Input<String>? ipAddressType;

  /// Whether the request and response headers exchanged between the load balancer and the Lambda function include arrays of values or strings. Only applies when `target_type` is `lambda`. Default is `false`.
  final pulumi.Input<bool>? lambdaMultiValueHeadersEnabled;

  /// Determines how the load balancer selects targets when routing requests. Only applicable for Application Load Balancer Target Groups. The value is `round_robin`, `least_outstanding_requests`, or `weighted_random`. The default is `round_robin`.
  final pulumi.Input<String>? loadBalancingAlgorithmType;

  /// Determines whether to enable target anomaly mitigation.  Target anomaly mitigation is only supported by the `weighted_random` load balancing algorithm type.  See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#automatic-target-weights) for more information.  The value is `"on"` or `"off"`. The default is `"off"`.
  final pulumi.Input<String>? loadBalancingAnomalyMitigation;

  /// Indicates whether cross zone load balancing is enabled. The value is `"true"`, `"false"` or `"use_load_balancer_configuration"`. The default is `"use_load_balancer_configuration"`.
  final pulumi.Input<String>? loadBalancingCrossZoneEnabled;

  /// Name of the target group. If omitted, this provider will assign a random, unique name. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`. Cannot be longer than 6 characters.
  final pulumi.Input<String>? namePrefix;

  /// Port on which targets receive traffic, unless overridden when registering a specific target. Required when `target_type` is `instance`, `ip` or `alb`. Does not apply when `target_type` is `lambda`.
  final pulumi.Input<int>? port;

  /// Whether client IP preservation is enabled. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#client-ip-preservation) for more information.
  final pulumi.Input<String>? preserveClientIp;

  /// Protocol to use for routing traffic to the targets.
  /// Should be one of `GENEVE`, `HTTP`, `HTTPS`, `TCP`, `TCP_UDP`, `TLS`, `UDP`, `QUIC`, or `TCP_QUIC`.
  /// Required when `target_type` is `instance`, `ip`, or `alb`.
  /// Does not apply when `target_type` is `lambda`.
  final pulumi.Input<String>? protocol;

  /// Only applicable when `protocol` is `HTTP` or `HTTPS`. The protocol version. Specify `GRPC` to send requests to targets using gRPC. Specify `HTTP2` to send requests to targets using HTTP/2. The default is `HTTP1`, which sends requests to targets using HTTP/1.1
  final pulumi.Input<String>? protocolVersion;

  /// Whether to enable support for proxy protocol v2 on Network Load Balancers. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#proxy-protocol) for more information. Default is `false`.
  final pulumi.Input<bool>? proxyProtocolV2;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Amount time for targets to warm up before the load balancer sends them a full share of requests. The range is 30-900 seconds or 0 to disable. The default value is 0 seconds.
  final pulumi.Input<int>? slowStart;

  /// Stickiness configuration block. Detailed below.
  final pulumi.Input<TargetGroupStickiness>? stickiness;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Port on which the target control agent and application load balancer exchange management traffic for the target optimizer feature. Only applicable for Application Load Balancer target groups when `target_type` is `instance` or `ip`.
  final pulumi.Input<int>? targetControlPort;

  /// Target failover block. Only applicable for Gateway Load Balancer target groups. See target_failover for more information.
  final pulumi.Input<List<TargetGroupTargetFailover>>? targetFailovers;

  /// Target health requirements block. See target_group_health for more information.
  final pulumi.Input<TargetGroupTargetGroupHealth>? targetGroupHealth;

  /// Target health state block. Only applicable for Network Load Balancer target groups when `protocol` is `TCP` or `TLS`. See target_health_state for more information.
  final pulumi.Input<List<TargetGroupTargetHealthState>>? targetHealthStates;

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
  final pulumi.Input<String>? targetType;

  /// Identifier of the VPC in which to create the target group. Required when `target_type` is `instance`, `ip` or `alb`. Does not apply when `target_type` is `lambda`.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [TargetGroupArgs].
  /// [connectionTermination] Whether to terminate connections at the end of the deregistration timeout on Network Load Balancers. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#deregistration-delay) for more information. Default is `false`.
  /// [deregistrationDelay] Amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds. The default value is 300 seconds.
  /// [healthCheck] Health Check configuration block. Detailed below.
  /// [ipAddressType] The type of IP addresses used by the target group, only supported when target type is set to `ip`. Possible values are `ipv4` or `ipv6`.
  /// [lambdaMultiValueHeadersEnabled] Whether the request and response headers exchanged between the load balancer and the Lambda function include arrays of values or strings. Only applies when `target_type` is `lambda`. Default is `false`.
  /// [loadBalancingAlgorithmType] Determines how the load balancer selects targets when routing requests. Only applicable for Application Load Balancer Target Groups. The value is `round_robin`, `least_outstanding_requests`, or `weighted_random`. The default is `round_robin`.
  /// [loadBalancingAnomalyMitigation] Determines whether to enable target anomaly mitigation.  Target anomaly mitigation is only supported by the `weighted_random` load balancing algorithm type.  See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#automatic-target-weights) for more information.  The value is `"on"` or `"off"`. The default is `"off"`.
  /// [loadBalancingCrossZoneEnabled] Indicates whether cross zone load balancing is enabled. The value is `"true"`, `"false"` or `"use_load_balancer_configuration"`. The default is `"use_load_balancer_configuration"`.
  /// [name] Name of the target group. If omitted, this provider will assign a random, unique name. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`. Cannot be longer than 6 characters.
  /// [port] Port on which targets receive traffic, unless overridden when registering a specific target. Required when `target_type` is `instance`, `ip` or `alb`. Does not apply when `target_type` is `lambda`.
  /// [preserveClientIp] Whether client IP preservation is enabled. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#client-ip-preservation) for more information.
  /// [protocol] Protocol to use for routing traffic to the targets.
  /// [protocolVersion] Only applicable when `protocol` is `HTTP` or `HTTPS`. The protocol version. Specify `GRPC` to send requests to targets using gRPC. Specify `HTTP2` to send requests to targets using HTTP/2. The default is `HTTP1`, which sends requests to targets using HTTP/1.1
  /// [proxyProtocolV2] Whether to enable support for proxy protocol v2 on Network Load Balancers. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#proxy-protocol) for more information. Default is `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [slowStart] Amount time for targets to warm up before the load balancer sends them a full share of requests. The range is 30-900 seconds or 0 to disable. The default value is 0 seconds.
  /// [stickiness] Stickiness configuration block. Detailed below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetControlPort] Port on which the target control agent and application load balancer exchange management traffic for the target optimizer feature. Only applicable for Application Load Balancer target groups when `target_type` is `instance` or `ip`.
  /// [targetFailovers] Target failover block. Only applicable for Gateway Load Balancer target groups. See target_failover for more information.
  /// [targetGroupHealth] Target health requirements block. See target_group_health for more information.
  /// [targetHealthStates] Target health state block. Only applicable for Network Load Balancer target groups when `protocol` is `TCP` or `TLS`. See target_health_state for more information.
  /// [targetType] Type of target that you must specify when registering targets with this target group.
  /// [vpcId] Identifier of the VPC in which to create the target group. Required when `target_type` is `instance`, `ip` or `alb`. Does not apply when `target_type` is `lambda`.
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
    return <String, dynamic>{
      'connectionTermination': ?connectionTermination,
      'deregistrationDelay': ?deregistrationDelay,
      'healthCheck':
          ?pulumi.Input.mapOptionalInputValue<
            TargetGroupHealthCheck,
            Map<String, dynamic>
          >(healthCheck, (value) => value.toMap()),
      'ipAddressType': ?ipAddressType,
      'lambdaMultiValueHeadersEnabled': ?lambdaMultiValueHeadersEnabled,
      'loadBalancingAlgorithmType': ?loadBalancingAlgorithmType,
      'loadBalancingAnomalyMitigation': ?loadBalancingAnomalyMitigation,
      'loadBalancingCrossZoneEnabled': ?loadBalancingCrossZoneEnabled,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'port': ?port,
      'preserveClientIp': ?preserveClientIp,
      'protocol': ?protocol,
      'protocolVersion': ?protocolVersion,
      'proxyProtocolV2': ?proxyProtocolV2,
      'region': ?region,
      'slowStart': ?slowStart,
      'stickiness':
          ?pulumi.Input.mapOptionalInputValue<
            TargetGroupStickiness,
            Map<String, dynamic>
          >(stickiness, (value) => value.toMap()),
      'tags': ?tags,
      'targetControlPort': ?targetControlPort,
      'targetFailovers':
          ?pulumi.Input.mapOptionalInputValue<
            List<TargetGroupTargetFailover>,
            List<Map<String, dynamic>>
          >(
            targetFailovers,
            (value) =>
                pulumi.Input.encodeList<
                  TargetGroupTargetFailover,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'targetGroupHealth':
          ?pulumi.Input.mapOptionalInputValue<
            TargetGroupTargetGroupHealth,
            Map<String, dynamic>
          >(targetGroupHealth, (value) => value.toMap()),
      'targetHealthStates':
          ?pulumi.Input.mapOptionalInputValue<
            List<TargetGroupTargetHealthState>,
            List<Map<String, dynamic>>
          >(
            targetHealthStates,
            (value) =>
                pulumi.Input.encodeList<
                  TargetGroupTargetHealthState,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'targetType': ?targetType,
      'vpcId': ?vpcId,
    };
  }

  factory TargetGroupArgs.fromMap(Map<String, dynamic> map) {
    return TargetGroupArgs(
      connectionTermination: (() {
        final guardedValue = map['connectionTermination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      deregistrationDelay: (() {
        final guardedValue = map['deregistrationDelay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      healthCheck: (() {
        final guardedValue = map['healthCheck'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TargetGroupHealthCheck.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ipAddressType: (() {
        final guardedValue = map['ipAddressType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lambdaMultiValueHeadersEnabled: (() {
        final guardedValue = map['lambdaMultiValueHeadersEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      loadBalancingAlgorithmType: (() {
        final guardedValue = map['loadBalancingAlgorithmType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancingAnomalyMitigation: (() {
        final guardedValue = map['loadBalancingAnomalyMitigation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancingCrossZoneEnabled: (() {
        final guardedValue = map['loadBalancingCrossZoneEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namePrefix: (() {
        final guardedValue = map['namePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      preserveClientIp: (() {
        final guardedValue = map['preserveClientIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocolVersion: (() {
        final guardedValue = map['protocolVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      proxyProtocolV2: (() {
        final guardedValue = map['proxyProtocolV2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      slowStart: (() {
        final guardedValue = map['slowStart'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      stickiness: (() {
        final guardedValue = map['stickiness'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TargetGroupStickiness.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetControlPort: (() {
        final guardedValue = map['targetControlPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      targetFailovers: (() {
        final guardedValue = map['targetFailovers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TargetGroupTargetFailover>(
            guardedValue,
            (value) => TargetGroupTargetFailover.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      targetGroupHealth: (() {
        final guardedValue = map['targetGroupHealth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TargetGroupTargetGroupHealth.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      targetHealthStates: (() {
        final guardedValue = map['targetHealthStates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TargetGroupTargetHealthState>(
            guardedValue,
            (value) => TargetGroupTargetHealthState.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      targetType: (() {
        final guardedValue = map['targetType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
