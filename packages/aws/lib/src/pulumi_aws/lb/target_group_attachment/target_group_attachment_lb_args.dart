// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TargetGroupAttachment.
class TargetGroupAttachmentLbArgs {
  /// The Availability Zone where the IP address of the target is to be registered. If the private IP address is outside of the VPC scope, this value must be set to `all`.
  final pulumi.Input<String>? availabilityZone;

  /// The port on which targets receive traffic.
  final pulumi.Input<int>? port;

  /// Server ID for the targets, consisting of the 0x prefix followed by 16 hexadecimal characters. The value must be unique at the listener level. Required if `aws.lb.TargetGroup` protocol is `QUIC` or `TCP_QUIC`. Not valid with other protocols. Forces replacement if modified.
  final pulumi.Input<String>? quicServerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ARN of the target group with which to register targets.
  final pulumi.Input<String> targetGroupArn;

  /// The ID of the target. This is the Instance ID for an instance, or the container ID for an ECS container. If the target type is `ip`, specify an IP address. If the target type is `lambda`, specify the Lambda function ARN. If the target type is `alb`, specify the ALB ARN.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> targetId;

  TargetGroupAttachmentLbArgs({
    this.availabilityZone,
    this.port,
    this.quicServerId,
    this.region,
    required this.targetGroupArn,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final quicServerIdValue = quicServerId;
    if (quicServerIdValue != null) {
      map['quicServerId'] = quicServerIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['targetGroupArn'] = targetGroupArn;
    map['targetId'] = targetId;
    return map;
  }

  factory TargetGroupAttachmentLbArgs.fromMap(Map<String, dynamic> map) {
    return TargetGroupAttachmentLbArgs(
      availabilityZone:
          pulumi.Input.asOptionalInput<String>(map['availabilityZone']),
      port: pulumi.Input.asOptionalInput<int>(map['port']),
      quicServerId: pulumi.Input.asOptionalInput<String>(map['quicServerId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      targetGroupArn: pulumi.Input.asInput<String>(map['targetGroupArn']),
      targetId: pulumi.Input.asInput<String>(map['targetId']),
    );
  }
}
