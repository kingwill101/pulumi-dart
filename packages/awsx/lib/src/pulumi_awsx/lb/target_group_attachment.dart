import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_group_attachment_args.dart';

/// Attach an EC2 instance or Lambda to a Load Balancer. This will create required permissions if attaching to a Lambda Function.
class TargetGroupAttachment extends pulumi.ComponentResource {
  /// Auto-created Lambda permission, if targeting a Lambda function
  late final pulumi.Output<dynamic> lambdaPermission;

  /// Underlying Target Group Attachment resource
  late final pulumi.Output<dynamic> targetGroupAttachment;

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
    this.targetGroupAttachment =
        registerOutput<dynamic>('targetGroupAttachment');
  }
}
