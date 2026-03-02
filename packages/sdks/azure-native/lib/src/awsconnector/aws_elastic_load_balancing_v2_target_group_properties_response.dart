// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'matcher_response.dart';
import 'tag_response.dart';
import 'target_description_response.dart';
import 'target_group_attribute_response.dart';

/// Definition of awsElasticLoadBalancingV2TargetGroup
class AwsElasticLoadBalancingV2TargetGroupPropertiesResponse {
  /// Indicates whether health checks are enabled. If the target type is lambda, health checks are disabled by default but can be enabled. If the target type is instance, ip, or alb, health checks are always enabled and cannot be disabled.
  final pulumi.Input<bool>? healthCheckEnabled;
  /// The approximate amount of time, in seconds, between health checks of an individual target.
  final pulumi.Input<int>? healthCheckIntervalSeconds;
  /// [HTTP/HTTPS health checks] The destination for health checks on the targets. [HTTP1 or HTTP2 protocol version] The ping path. The default is /. [GRPC protocol version] The path of a custom health check method with the format /package.service/method. The default is /AWS.ALB/healthcheck.
  final pulumi.Input<String>? healthCheckPath;
  /// The port the load balancer uses when performing health checks on targets.
  final pulumi.Input<String>? healthCheckPort;
  /// The protocol the load balancer uses when performing health checks on targets.
  final pulumi.Input<String>? healthCheckProtocol;
  /// The amount of time, in seconds, during which no response from a target means a failed health check.
  final pulumi.Input<int>? healthCheckTimeoutSeconds;
  /// The number of consecutive health checks successes required before considering an unhealthy target healthy.
  final pulumi.Input<int>? healthyThresholdCount;
  /// The type of IP address used for this target group. The possible values are ipv4 and ipv6.
  final pulumi.Input<String>? ipAddressType;
  /// The Amazon Resource Names (ARNs) of the load balancers that route traffic to this target group.
  final pulumi.Input<List<String>>? loadBalancerArns;
  /// [HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful response from a target.
  final pulumi.Input<MatcherResponse>? matcher;
  /// The name of the target group.
  final pulumi.Input<String>? name;
  /// The port on which the targets receive traffic. This port is used unless you specify a port override when registering the target. If the target is a Lambda function, this parameter does not apply. If the protocol is GENEVE, the supported port is 6081.
  final pulumi.Input<int>? port;
  /// The protocol to use for routing traffic to the targets.
  final pulumi.Input<String>? protocol;
  /// [HTTP/HTTPS protocol] The protocol version. The possible values are GRPC, HTTP1, and HTTP2.
  final pulumi.Input<String>? protocolVersion;
  /// The tags.
  final pulumi.Input<List<TagResponse>>? tags;
  /// The ARN of the Target Group
  final pulumi.Input<String>? targetGroupArn;
  /// The attributes.
  final pulumi.Input<List<TargetGroupAttributeResponse>>? targetGroupAttributes;
  /// The full name of the target group.
  final pulumi.Input<String>? targetGroupFullName;
  /// The name of the target group.
  final pulumi.Input<String>? targetGroupName;
  /// The type of target that you must specify when registering targets with this target group. You can't specify targets for a target group using more than one target type.
  final pulumi.Input<String>? targetType;
  /// The targets.
  final pulumi.Input<List<TargetDescriptionResponse>>? targets;
  /// The number of consecutive health check failures required before considering a target unhealthy.
  final pulumi.Input<int>? unhealthyThresholdCount;
  /// The identifier of the virtual private cloud (VPC). If the target is a Lambda function, this parameter does not apply.
  final pulumi.Input<String>? vpcId;

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
      'matcher': ?pulumi.Input.mapOptionalInputValue<MatcherResponse, Map<String, dynamic>>(matcher, (value) => value.toMap()),
      'name': ?name,
      'port': ?port,
      'protocol': ?protocol,
      'protocolVersion': ?protocolVersion,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetGroupArn': ?targetGroupArn,
      'targetGroupAttributes': ?pulumi.Input.mapOptionalInputValue<List<TargetGroupAttributeResponse>, List<Map<String, dynamic>>>(targetGroupAttributes, (value) => pulumi.Input.encodeList<TargetGroupAttributeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetGroupFullName': ?targetGroupFullName,
      'targetGroupName': ?targetGroupName,
      'targetType': ?targetType,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<TargetDescriptionResponse>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<TargetDescriptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unhealthyThresholdCount': ?unhealthyThresholdCount,
      'vpcId': ?vpcId,
    };
  }

  factory AwsElasticLoadBalancingV2TargetGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsElasticLoadBalancingV2TargetGroupPropertiesResponse(
      healthCheckEnabled: map['healthCheckEnabled'] == null ? null : (map['healthCheckEnabled']! as bool).input(),
      healthCheckIntervalSeconds: map['healthCheckIntervalSeconds'] == null ? null : (map['healthCheckIntervalSeconds']! as int).input(),
      healthCheckPath: map['healthCheckPath'] == null ? null : (map['healthCheckPath']! as String).input(),
      healthCheckPort: map['healthCheckPort'] == null ? null : (map['healthCheckPort']! as String).input(),
      healthCheckProtocol: map['healthCheckProtocol'] == null ? null : (map['healthCheckProtocol']! as String).input(),
      healthCheckTimeoutSeconds: map['healthCheckTimeoutSeconds'] == null ? null : (map['healthCheckTimeoutSeconds']! as int).input(),
      healthyThresholdCount: map['healthyThresholdCount'] == null ? null : (map['healthyThresholdCount']! as int).input(),
      ipAddressType: map['ipAddressType'] == null ? null : (map['ipAddressType']! as String).input(),
      loadBalancerArns: map['loadBalancerArns'] == null ? null : ((map['loadBalancerArns']! as List).cast<String>()).input(),
      matcher: map['matcher'] == null ? null : (MatcherResponse.fromMap((map['matcher']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      protocolVersion: map['protocolVersion'] == null ? null : (map['protocolVersion']! as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<TagResponse>(map['tags']!, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetGroupArn: map['targetGroupArn'] == null ? null : (map['targetGroupArn']! as String).input(),
      targetGroupAttributes: map['targetGroupAttributes'] == null ? null : (pulumi.Input.decodeList<TargetGroupAttributeResponse>(map['targetGroupAttributes']!, (value) => TargetGroupAttributeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetGroupFullName: map['targetGroupFullName'] == null ? null : (map['targetGroupFullName']! as String).input(),
      targetGroupName: map['targetGroupName'] == null ? null : (map['targetGroupName']! as String).input(),
      targetType: map['targetType'] == null ? null : (map['targetType']! as String).input(),
      targets: map['targets'] == null ? null : (pulumi.Input.decodeList<TargetDescriptionResponse>(map['targets']!, (value) => TargetDescriptionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      unhealthyThresholdCount: map['unhealthyThresholdCount'] == null ? null : (map['unhealthyThresholdCount']! as int).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}

