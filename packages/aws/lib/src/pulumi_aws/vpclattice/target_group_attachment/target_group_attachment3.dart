import 'package:pulumi/pulumi.dart';
import '../target_group_attachment_target/target_group_attachment_target.dart';
import 'target_group_attachment_args3.dart';

/// Provides the ability to register a target with an AWS VPC Lattice Target Group.
///
/// ## Example Usage
///
/// ### Basic Usage
class TargetGroupAttachment3 extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The target.
  late final Output<TargetGroupAttachmentTarget> target;

  /// The ID or Amazon Resource Name (ARN) of the target group.
  late final Output<String> targetGroupIdentifier;

  TargetGroupAttachment3(
    String name, {
    TargetGroupAttachmentArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/targetGroupAttachment:TargetGroupAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.target = registerOutput<TargetGroupAttachmentTarget>('target');
    this.targetGroupIdentifier =
        registerOutput<String>('targetGroupIdentifier');
  }
}
