import 'package:pulumi/pulumi.dart' as pulumi;
import '../target_group_health_check/target_group_health_check_lb.dart';
import '../target_group_stickiness/target_group_stickiness_lb.dart';
import '../target_group_target_failover/target_group_target_failover_lb.dart';
import '../target_group_target_group_health/target_group_target_group_health_lb.dart';
import '../target_group_target_health_state/target_group_target_health_state_lb.dart';
import 'target_group_lb_args.dart';

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
///
/// Using `pulumi import`, import Target Groups using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:lb/targetGroup:TargetGroup app_front_end arn:aws:elasticloadbalancing:us-west-2:187416307283:targetgroup/app-front-end/20cfe21448b66314
/// ```
class TargetGroupLb extends pulumi.CustomResource {
  /// ARN of the Target Group (matches `id`).
  late final pulumi.Output<String> arn;

  /// ARN suffix for use with CloudWatch Metrics.
  late final pulumi.Output<String> arnSuffix;

  /// Whether to terminate connections at the end of the deregistration timeout on Network Load Balancers. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#deregistration-delay) for more information. Default is `false`.
  late final pulumi.Output<bool> connectionTermination;

  /// Amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds. The default value is 300 seconds.
  late final pulumi.Output<int?> deregistrationDelay;

  /// Health Check configuration block. Detailed below.
  late final pulumi.Output<TargetGroupHealthCheckLb> healthCheck;

  /// The type of IP addresses used by the target group, only supported when target type is set to `ip`. Possible values are `ipv4` or `ipv6`.
  late final pulumi.Output<String> ipAddressType;

  /// Whether the request and response headers exchanged between the load balancer and the Lambda function include arrays of values or strings. Only applies when `target_type` is `lambda`. Default is `false`.
  late final pulumi.Output<bool?> lambdaMultiValueHeadersEnabled;

  /// ARNs of the Load Balancers associated with the Target Group.
  late final pulumi.Output<List<String>> loadBalancerArns;

  /// Determines how the load balancer selects targets when routing requests. Only applicable for Application Load Balancer Target Groups. The value is `round_robin`, `least_outstanding_requests`, or `weighted_random`. The default is `round_robin`.
  late final pulumi.Output<String> loadBalancingAlgorithmType;

  /// Determines whether to enable target anomaly mitigation.  Target anomaly mitigation is only supported by the `weighted_random` load balancing algorithm type.  See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#automatic-target-weights) for more information.  The value is `"on"` or `"off"`. The default is `"off"`.
  late final pulumi.Output<String> loadBalancingAnomalyMitigation;

  /// Indicates whether cross zone load balancing is enabled. The value is `"true"`, `"false"` or `"use_load_balancer_configuration"`. The default is `"use_load_balancer_configuration"`.
  late final pulumi.Output<String> loadBalancingCrossZoneEnabled;

  /// Name of the target group. If omitted, this provider will assign a random, unique name. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`. Cannot be longer than 6 characters.
  late final pulumi.Output<String> namePrefix;

  /// Port on which targets receive traffic, unless overridden when registering a specific target. Required when `target_type` is `instance`, `ip` or `alb`. Does not apply when `target_type` is `lambda`.
  late final pulumi.Output<int?> port;

  /// Whether client IP preservation is enabled. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#client-ip-preservation) for more information.
  late final pulumi.Output<String> preserveClientIp;

  /// Protocol to use for routing traffic to the targets.
  /// Should be one of `GENEVE`, `HTTP`, `HTTPS`, `TCP`, `TCP_UDP`, `TLS`, `UDP`, `QUIC`, or `TCP_QUIC`.
  /// Required when `target_type` is `instance`, `ip`, or `alb`.
  /// Does not apply when `target_type` is `lambda`.
  late final pulumi.Output<String?> protocol;

  /// Only applicable when `protocol` is `HTTP` or `HTTPS`. The protocol version. Specify `GRPC` to send requests to targets using gRPC. Specify `HTTP2` to send requests to targets using HTTP/2. The default is `HTTP1`, which sends requests to targets using HTTP/1.1
  late final pulumi.Output<String> protocolVersion;

  /// Whether to enable support for proxy protocol v2 on Network Load Balancers. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#proxy-protocol) for more information. Default is `false`.
  late final pulumi.Output<bool?> proxyProtocolV2;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Amount time for targets to warm up before the load balancer sends them a full share of requests. The range is 30-900 seconds or 0 to disable. The default value is 0 seconds.
  late final pulumi.Output<int?> slowStart;

  /// Stickiness configuration block. Detailed below.
  late final pulumi.Output<TargetGroupStickinessLb> stickiness;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Port on which the target control agent and application load balancer exchange management traffic for the target optimizer feature. Only applicable for Application Load Balancer target groups when `target_type` is `instance` or `ip`.
  late final pulumi.Output<int?> targetControlPort;

  /// Target failover block. Only applicable for Gateway Load Balancer target groups. See target_failover for more information.
  late final pulumi.Output<List<TargetGroupTargetFailoverLb>> targetFailovers;

  /// Target health requirements block. See target_group_health for more information.
  late final pulumi.Output<TargetGroupTargetGroupHealthLb> targetGroupHealth;

  /// Target health state block. Only applicable for Network Load Balancer target groups when `protocol` is `TCP` or `TLS`. See target_health_state for more information.
  late final pulumi.Output<List<TargetGroupTargetHealthStateLb>>
      targetHealthStates;

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
  late final pulumi.Output<String?> targetType;

  /// Identifier of the VPC in which to create the target group. Required when `target_type` is `instance`, `ip` or `alb`. Does not apply when `target_type` is `lambda`.
  late final pulumi.Output<String?> vpcId;

  TargetGroupLb(
    String name, {
    TargetGroupLbArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lb/targetGroup:TargetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.arnSuffix = registerOutput<String>('arnSuffix');
    this.connectionTermination = registerOutput<bool>('connectionTermination');
    this.deregistrationDelay = registerOutput<int?>('deregistrationDelay');
    this.healthCheck = registerOutput<TargetGroupHealthCheckLb>('healthCheck');
    this.ipAddressType = registerOutput<String>('ipAddressType');
    this.lambdaMultiValueHeadersEnabled =
        registerOutput<bool?>('lambdaMultiValueHeadersEnabled');
    this.loadBalancerArns = registerOutput<List<String>>('loadBalancerArns');
    this.loadBalancingAlgorithmType =
        registerOutput<String>('loadBalancingAlgorithmType');
    this.loadBalancingAnomalyMitigation =
        registerOutput<String>('loadBalancingAnomalyMitigation');
    this.loadBalancingCrossZoneEnabled =
        registerOutput<String>('loadBalancingCrossZoneEnabled');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.port = registerOutput<int?>('port');
    this.preserveClientIp = registerOutput<String>('preserveClientIp');
    this.protocol = registerOutput<String?>('protocol');
    this.protocolVersion = registerOutput<String>('protocolVersion');
    this.proxyProtocolV2 = registerOutput<bool?>('proxyProtocolV2');
    this.region = registerOutput<String>('region');
    this.slowStart = registerOutput<int?>('slowStart');
    this.stickiness = registerOutput<TargetGroupStickinessLb>('stickiness');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetControlPort = registerOutput<int?>('targetControlPort');
    this.targetFailovers =
        registerOutput<List<TargetGroupTargetFailoverLb>>('targetFailovers');
    this.targetGroupHealth =
        registerOutput<TargetGroupTargetGroupHealthLb>('targetGroupHealth');
    this.targetHealthStates =
        registerOutput<List<TargetGroupTargetHealthStateLb>>(
            'targetHealthStates');
    this.targetType = registerOutput<String?>('targetType');
    this.vpcId = registerOutput<String?>('vpcId');
  }
}
