// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'matcher_response.dart';
import 'tag_response.dart';
import 'target_description_response.dart';
import 'target_group_attribute_response.dart';

/// Definition of awsElasticLoadBalancingV2TargetGroup
class AwsElasticLoadBalancingV2TargetGroupPropertiesResponse {
  /// Indicates whether health checks are enabled. If the target type is lambda, health checks are disabled by default but can be enabled. If the target type is instance, ip, or alb, health checks are always enabled and cannot be disabled.
  final bool? healthCheckEnabled;
  /// The approximate amount of time, in seconds, between health checks of an individual target.
  final int? healthCheckIntervalSeconds;
  /// [HTTP/HTTPS health checks] The destination for health checks on the targets. [HTTP1 or HTTP2 protocol version] The ping path. The default is /. [GRPC protocol version] The path of a custom health check method with the format /package.service/method. The default is /AWS.ALB/healthcheck.
  final String? healthCheckPath;
  /// The port the load balancer uses when performing health checks on targets.
  final String? healthCheckPort;
  /// The protocol the load balancer uses when performing health checks on targets.
  final String? healthCheckProtocol;
  /// The amount of time, in seconds, during which no response from a target means a failed health check.
  final int? healthCheckTimeoutSeconds;
  /// The number of consecutive health checks successes required before considering an unhealthy target healthy.
  final int? healthyThresholdCount;
  /// The type of IP address used for this target group. The possible values are ipv4 and ipv6.
  final String? ipAddressType;
  /// The Amazon Resource Names (ARNs) of the load balancers that route traffic to this target group.
  final List<String>? loadBalancerArns;
  /// [HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful response from a target.
  final MatcherResponse? matcher;
  /// The name of the target group.
  final String? name;
  /// The port on which the targets receive traffic. This port is used unless you specify a port override when registering the target. If the target is a Lambda function, this parameter does not apply. If the protocol is GENEVE, the supported port is 6081.
  final int? port;
  /// The protocol to use for routing traffic to the targets.
  final String? protocol;
  /// [HTTP/HTTPS protocol] The protocol version. The possible values are GRPC, HTTP1, and HTTP2.
  final String? protocolVersion;
  /// The tags.
  final List<TagResponse>? tags;
  /// The ARN of the Target Group
  final String? targetGroupArn;
  /// The attributes.
  final List<TargetGroupAttributeResponse>? targetGroupAttributes;
  /// The full name of the target group.
  final String? targetGroupFullName;
  /// The name of the target group.
  final String? targetGroupName;
  /// The type of target that you must specify when registering targets with this target group. You can't specify targets for a target group using more than one target type.
  final String? targetType;
  /// The targets.
  final List<TargetDescriptionResponse>? targets;
  /// The number of consecutive health check failures required before considering a target unhealthy.
  final int? unhealthyThresholdCount;
  /// The identifier of the virtual private cloud (VPC). If the target is a Lambda function, this parameter does not apply.
  final String? vpcId;

  /// Creates a new [AwsElasticLoadBalancingV2TargetGroupPropertiesResponse].
  /// [healthCheckEnabled] Indicates whether health checks are enabled. If the target type is lambda, health checks are disabled by default but can be enabled. If the target type is instance, ip, or alb, health checks are always enabled and cannot be disabled.
  /// [healthCheckIntervalSeconds] The approximate amount of time, in seconds, between health checks of an individual target.
  /// [healthCheckPath] [HTTP/HTTPS health checks] The destination for health checks on the targets. [HTTP1 or HTTP2 protocol version] The ping path. The default is /. [GRPC protocol version] The path of a custom health check method with the format /package.service/method. The default is /AWS.ALB/healthcheck.
  /// [healthCheckPort] The port the load balancer uses when performing health checks on targets.
  /// [healthCheckProtocol] The protocol the load balancer uses when performing health checks on targets.
  /// [healthCheckTimeoutSeconds] The amount of time, in seconds, during which no response from a target means a failed health check.
  /// [healthyThresholdCount] The number of consecutive health checks successes required before considering an unhealthy target healthy.
  /// [ipAddressType] The type of IP address used for this target group. The possible values are ipv4 and ipv6.
  /// [loadBalancerArns] The Amazon Resource Names (ARNs) of the load balancers that route traffic to this target group.
  /// [matcher] [HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful response from a target.
  /// [name] The name of the target group.
  /// [port] The port on which the targets receive traffic. This port is used unless you specify a port override when registering the target. If the target is a Lambda function, this parameter does not apply. If the protocol is GENEVE, the supported port is 6081.
  /// [protocol] The protocol to use for routing traffic to the targets.
  /// [protocolVersion] [HTTP/HTTPS protocol] The protocol version. The possible values are GRPC, HTTP1, and HTTP2.
  /// [tags] The tags.
  /// [targetGroupArn] The ARN of the Target Group
  /// [targetGroupAttributes] The attributes.
  /// [targetGroupFullName] The full name of the target group.
  /// [targetGroupName] The name of the target group.
  /// [targetType] The type of target that you must specify when registering targets with this target group. You can't specify targets for a target group using more than one target type.
  /// [targets] The targets.
  /// [unhealthyThresholdCount] The number of consecutive health check failures required before considering a target unhealthy.
  /// [vpcId] The identifier of the virtual private cloud (VPC). If the target is a Lambda function, this parameter does not apply.
  AwsElasticLoadBalancingV2TargetGroupPropertiesResponse({
    this.healthCheckEnabled,
    this.healthCheckIntervalSeconds,
    this.healthCheckPath,
    this.healthCheckPort,
    this.healthCheckProtocol,
    this.healthCheckTimeoutSeconds,
    this.healthyThresholdCount,
    this.ipAddressType,
    this.loadBalancerArns,
    this.matcher,
    this.name,
    this.port,
    this.protocol,
    this.protocolVersion,
    this.tags,
    this.targetGroupArn,
    this.targetGroupAttributes,
    this.targetGroupFullName,
    this.targetGroupName,
    this.targetType,
    this.targets,
    this.unhealthyThresholdCount,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckEnabled': ?healthCheckEnabled,
      'healthCheckIntervalSeconds': ?healthCheckIntervalSeconds,
      'healthCheckPath': ?healthCheckPath,
      'healthCheckPort': ?healthCheckPort,
      'healthCheckProtocol': ?healthCheckProtocol,
      'healthCheckTimeoutSeconds': ?healthCheckTimeoutSeconds,
      'healthyThresholdCount': ?healthyThresholdCount,
      'ipAddressType': ?ipAddressType,
      'loadBalancerArns': ?loadBalancerArns,
      'matcher': ?matcher == null ? null : matcher!.toMap(),
      'name': ?name,
      'port': ?port,
      'protocol': ?protocol,
      'protocolVersion': ?protocolVersion,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'targetGroupArn': ?targetGroupArn,
      'targetGroupAttributes': ?targetGroupAttributes == null ? null : pulumi.Input.encodeList<TargetGroupAttributeResponse, Map<String, dynamic>>(targetGroupAttributes!, (value) => value.toMap()),
      'targetGroupFullName': ?targetGroupFullName,
      'targetGroupName': ?targetGroupName,
      'targetType': ?targetType,
      'targets': ?targets == null ? null : pulumi.Input.encodeList<TargetDescriptionResponse, Map<String, dynamic>>(targets!, (value) => value.toMap()),
      'unhealthyThresholdCount': ?unhealthyThresholdCount,
      'vpcId': ?vpcId,
    };
  }

  factory AwsElasticLoadBalancingV2TargetGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsElasticLoadBalancingV2TargetGroupPropertiesResponse(
      healthCheckEnabled: map['healthCheckEnabled'] == null ? null : map['healthCheckEnabled'] as bool,
      healthCheckIntervalSeconds: map['healthCheckIntervalSeconds'] == null ? null : map['healthCheckIntervalSeconds'] as int,
      healthCheckPath: map['healthCheckPath'] == null ? null : map['healthCheckPath'] as String,
      healthCheckPort: map['healthCheckPort'] == null ? null : map['healthCheckPort'] as String,
      healthCheckProtocol: map['healthCheckProtocol'] == null ? null : map['healthCheckProtocol'] as String,
      healthCheckTimeoutSeconds: map['healthCheckTimeoutSeconds'] == null ? null : map['healthCheckTimeoutSeconds'] as int,
      healthyThresholdCount: map['healthyThresholdCount'] == null ? null : map['healthyThresholdCount'] as int,
      ipAddressType: map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      loadBalancerArns: map['loadBalancerArns'] == null ? null : (map['loadBalancerArns'] as List).cast<String>(),
      matcher: map['matcher'] == null ? null : MatcherResponse.fromMap((map['matcher'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      protocolVersion: map['protocolVersion'] == null ? null : map['protocolVersion'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      targetGroupArn: map['targetGroupArn'] == null ? null : map['targetGroupArn'] as String,
      targetGroupAttributes: map['targetGroupAttributes'] == null ? null : pulumi.Input.decodeList<TargetGroupAttributeResponse>(map['targetGroupAttributes'], (value) => TargetGroupAttributeResponse.fromMap((value as Map).cast<String, dynamic>())),
      targetGroupFullName: map['targetGroupFullName'] == null ? null : map['targetGroupFullName'] as String,
      targetGroupName: map['targetGroupName'] == null ? null : map['targetGroupName'] as String,
      targetType: map['targetType'] == null ? null : map['targetType'] as String,
      targets: map['targets'] == null ? null : pulumi.Input.decodeList<TargetDescriptionResponse>(map['targets'], (value) => TargetDescriptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      unhealthyThresholdCount: map['unhealthyThresholdCount'] == null ? null : map['unhealthyThresholdCount'] as int,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

