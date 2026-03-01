// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_target_group_attachment_target_group_attachment_args_doc}
/// The set of arguments for TargetGroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_lb_target_group_attachment_target_group_attachment_args_doc}
class TargetGroupAttachmentArgs {
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

  /// Creates a new [TargetGroupAttachmentArgs].
  /// [availabilityZone] The Availability Zone where the IP address of the target is to be registered. If the private IP address is outside of the VPC scope, this value must be set to `all`.
  /// [port] The port on which targets receive traffic.
  /// [quicServerId] Server ID for the targets, consisting of the 0x prefix followed by 16 hexadecimal characters. The value must be unique at the listener level. Required if `aws.lb.TargetGroup` protocol is `QUIC` or `TCP_QUIC`. Not valid with other protocols. Forces replacement if modified.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetGroupArn] The ARN of the target group with which to register targets.
  /// [targetId] The ID of the target. This is the Instance ID for an instance, or the container ID for an ECS container. If the target type is `ip`, specify an IP address. If the target type is `lambda`, specify the Lambda function ARN. If the target type is `alb`, specify the ALB ARN.
  TargetGroupAttachmentArgs({
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<int>? port,
    pulumi.Output<String>? quicServerId,
    pulumi.Output<String>? region,
    required pulumi.Output<String> targetGroupArn,
    required pulumi.Output<String> targetId,
  }) :
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      port = pulumi.Input.asOptionalInput<int>(port),
      quicServerId = pulumi.Input.asOptionalInput<String>(quicServerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      targetGroupArn = pulumi.Input.asInput<String>(targetGroupArn),
      targetId = pulumi.Input.asInput<String>(targetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'port': ?port,
      'quicServerId': ?quicServerId,
      'region': ?region,
      'targetGroupArn': targetGroupArn,
      'targetId': targetId,
    };
  }

  factory TargetGroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return TargetGroupAttachmentArgs(
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      quicServerId: map['quicServerId'] == null ? null : pulumi.Output.create<String>(map['quicServerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      targetGroupArn: pulumi.Output.create<String>(map['targetGroupArn'] as String),
      targetId: pulumi.Output.create<String>(map['targetId'] as String),
    );
  }
}

