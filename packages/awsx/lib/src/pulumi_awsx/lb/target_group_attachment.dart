import 'package:pulumi/pulumi.dart';
import 'target_group_attachment_args.dart';

/// Attach an EC2 instance or Lambda to a Load Balancer. This will create required permissions if attaching to a Lambda Function.
class TargetGroupAttachment extends ComponentResource {
  /// Auto-created Lambda permission, if targeting a Lambda function
  late final Output<dynamic> lambdaPermission;

  /// Underlying Target Group Attachment resource
  late final Output<dynamic> targetGroupAttachment;

  TargetGroupAttachment(
    String name, {
    TargetGroupAttachmentArgs? args,
    ComponentResourceOptions? options,
  }) : super(
          'awsx:lb:TargetGroupAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? ComponentResourceOptions(),
        ) {
    this.lambdaPermission = registerOutput<dynamic>('lambdaPermission');
    this.targetGroupAttachment =
        registerOutput<dynamic>('targetGroupAttachment');
  }
}
