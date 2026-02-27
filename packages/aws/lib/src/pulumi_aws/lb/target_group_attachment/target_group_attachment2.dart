import 'package:pulumi/pulumi.dart';
import 'target_group_attachment_args2.dart';

/// Provides the ability to register instances and containers with an Application Load Balancer (ALB) or Network Load Balancer (NLB) target group. For attaching resources with Elastic Load Balancer (ELB), see the `aws.elb.Attachment` resource.
///
/// > **Note:** `aws.alb.TargetGroupAttachment` is known as `aws.lb.TargetGroupAttachment`. The functionality is identical.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Lambda Target
///
///
///
/// ### Target using QUIC
///
///
///
/// ## Import
///
/// You cannot import Target Group Attachments.
class TargetGroupAttachment2 extends CustomResource {
  /// The Availability Zone where the IP address of the target is to be registered. If the private IP address is outside of the VPC scope, this value must be set to `all`.
  late final Output<String?> availabilityZone;

  /// The port on which targets receive traffic.
  late final Output<int?> port;

  /// Server ID for the targets, consisting of the 0x prefix followed by 16 hexadecimal characters. The value must be unique at the listener level. Required if `aws.lb.TargetGroup` protocol is `QUIC` or `TCP_QUIC`. Not valid with other protocols. Forces replacement if modified.
  late final Output<String?> quicServerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARN of the target group with which to register targets.
  late final Output<String> targetGroupArn;

  /// The ID of the target. This is the Instance ID for an instance, or the container ID for an ECS container. If the target type is `ip`, specify an IP address. If the target type is `lambda`, specify the Lambda function ARN. If the target type is `alb`, specify the ALB ARN.
  ///
  /// The following arguments are optional:
  late final Output<String> targetId;

  TargetGroupAttachment2(
    String name, {
    TargetGroupAttachmentArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lb/targetGroupAttachment:TargetGroupAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.availabilityZone = registerOutput<String?>('availabilityZone');
    this.port = registerOutput<int?>('port');
    this.quicServerId = registerOutput<String?>('quicServerId');
    this.region = registerOutput<String>('region');
    this.targetGroupArn = registerOutput<String>('targetGroupArn');
    this.targetId = registerOutput<String>('targetId');
  }
}
