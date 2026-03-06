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
  const TargetGroupAttachmentArgs({
    this.instance,
    this.instanceId,
    this.lambda,
    this.lambdaArn,
    this.targetGroup,
    this.targetGroupArn,
  });

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
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as pulumi_aws_ec2.Instance); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lambda: (() { final guardedValue = map['lambda']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as pulumi_aws_lambda.FunctionType); })(),
      lambdaArn: (() { final guardedValue = map['lambdaArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetGroup: (() { final guardedValue = map['targetGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as pulumi_aws_lb.TargetGroup); })(),
      targetGroupArn: (() { final guardedValue = map['targetGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

