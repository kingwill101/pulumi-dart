import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_group_attachment_args.dart';

/// Attach an EC2 instance or Lambda to a Load Balancer. This will create required permissions if attaching to a Lambda Function.
class TargetGroupAttachment extends pulumi.ComponentResource {
  /// Auto-created Lambda permission, if targeting a Lambda function
  late final pulumi.Output<dynamic> lambdaPermission;

  /// Underlying Target Group Attachment resource
  late final pulumi.Output<dynamic> targetGroupAttachment;

  /// Creates a new [TargetGroupAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetGroupAttachment]. {@macro pulumi_lb_target_group_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetGroupAttachment(
    String name, {
    TargetGroupAttachmentArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
         'awsx:lb:TargetGroupAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.ComponentResourceOptions(),
       ) {
    this.lambdaPermission = registerOutput<dynamic>('lambdaPermission');
    this.targetGroupAttachment = registerOutput<dynamic>(
      'targetGroupAttachment',
    );
  }
}
