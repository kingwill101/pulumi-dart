import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_group_attachment_args.dart';
import 'package:pulumi_aws/lambda.dart' as pulumi_aws_lambda;
import 'package:pulumi_aws/lb.dart' as pulumi_aws_lb;

/// Attach an EC2 instance or Lambda to a Load Balancer. This will create required permissions if attaching to a Lambda Function.
class TargetGroupAttachment extends pulumi.ComponentResource {
  /// Auto-created Lambda permission, if targeting a Lambda function
  late final pulumi.Output<pulumi_aws_lambda.Permission?> lambdaPermission;

  /// Underlying Target Group Attachment resource
  late final pulumi.Output<pulumi_aws_lb.TargetGroupAttachment>
  targetGroupAttachment;

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
    this.lambdaPermission = registerOutput<pulumi_aws_lambda.Permission?>(
      'lambdaPermission',
    );
    this.targetGroupAttachment =
        registerOutput<pulumi_aws_lb.TargetGroupAttachment>(
          'targetGroupAttachment',
        );
  }
}
