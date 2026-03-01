// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;
import 'package:pulumi_aws/lambda.dart' as pulumi_aws_lambda;
import 'package:pulumi_aws/lb.dart' as pulumi_aws_lb;

/// {@template pulumi_lb_target_group_attachment_args_doc}
/// The set of arguments for TargetGroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_lb_target_group_attachment_args_doc}
class TargetGroupAttachmentArgs {
  /// EC2 Instance to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  final pulumi.Input<pulumi_aws_ec2.Instance>? instance;
  /// ID of an EC2 Instance to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  final pulumi.Input<String>? instanceId;
  /// Lambda Function to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  final pulumi.Input<pulumi_aws_lambda.FunctionType>? lambda;
  /// ARN of a Lambda Function to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  final pulumi.Input<String>? lambdaArn;
  /// Target Group to attach to. Exactly one of [targetGroup] or [targetGroupArn] must be specified.
  final pulumi.Input<pulumi_aws_lb.TargetGroup>? targetGroup;
  /// ARN of the Target Group to attach to. Exactly one of [targetGroup] or [targetGroupArn] must be specified.
  final pulumi.Input<String>? targetGroupArn;

  /// Creates a new [TargetGroupAttachmentArgs].
  /// [instance] EC2 Instance to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  /// [instanceId] ID of an EC2 Instance to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  /// [lambda] Lambda Function to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  /// [lambdaArn] ARN of a Lambda Function to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  /// [targetGroup] Target Group to attach to. Exactly one of [targetGroup] or [targetGroupArn] must be specified.
  /// [targetGroupArn] ARN of the Target Group to attach to. Exactly one of [targetGroup] or [targetGroupArn] must be specified.
  TargetGroupAttachmentArgs({
    pulumi.Output<pulumi_aws_ec2.Instance>? instance,
    pulumi.Output<String>? instanceId,
    pulumi.Output<pulumi_aws_lambda.FunctionType>? lambda,
    pulumi.Output<String>? lambdaArn,
    pulumi.Output<pulumi_aws_lb.TargetGroup>? targetGroup,
    pulumi.Output<String>? targetGroupArn,
  }) :
      instance = pulumi.Input.asOptionalInput<pulumi_aws_ec2.Instance>(instance),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      lambda = pulumi.Input.asOptionalInput<pulumi_aws_lambda.FunctionType>(lambda),
      lambdaArn = pulumi.Input.asOptionalInput<String>(lambdaArn),
      targetGroup = pulumi.Input.asOptionalInput<pulumi_aws_lb.TargetGroup>(targetGroup),
      targetGroupArn = pulumi.Input.asOptionalInput<String>(targetGroupArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': ?instance,
      'instanceId': ?instanceId,
      'lambda': ?lambda,
      'lambdaArn': ?lambdaArn,
      'targetGroup': ?targetGroup,
      'targetGroupArn': ?targetGroupArn,
    };
  }

  factory TargetGroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return TargetGroupAttachmentArgs(
      instance: map['instance'] == null ? null : pulumi.Output.create<pulumi_aws_ec2.Instance>(map['instance'] as pulumi_aws_ec2.Instance),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      lambda: map['lambda'] == null ? null : pulumi.Output.create<pulumi_aws_lambda.FunctionType>(map['lambda'] as pulumi_aws_lambda.FunctionType),
      lambdaArn: map['lambdaArn'] == null ? null : pulumi.Output.create<String>(map['lambdaArn'] as String),
      targetGroup: map['targetGroup'] == null ? null : pulumi.Output.create<pulumi_aws_lb.TargetGroup>(map['targetGroup'] as pulumi_aws_lb.TargetGroup),
      targetGroupArn: map['targetGroupArn'] == null ? null : pulumi.Output.create<String>(map['targetGroupArn'] as String),
    );
  }
}

