import 'package:pulumi/pulumi.dart' as pulumi;
import '../target_group_attachment_target/target_group_attachment_target.dart';
import 'target_group_attachment_vpclattice_args.dart';

/// Provides the ability to register a target with an AWS VPC Lattice Target Group.
///
/// ## Example Usage
///
/// ### Basic Usage
class TargetGroupAttachmentVpclattice extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The target.
  late final pulumi.Output<TargetGroupAttachmentTarget> target;

  /// The ID or Amazon Resource Name (ARN) of the target group.
  late final pulumi.Output<String> targetGroupIdentifier;

  TargetGroupAttachmentVpclattice(
    String name, {
    TargetGroupAttachmentVpclatticeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/targetGroupAttachment:TargetGroupAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.target = registerOutput<TargetGroupAttachmentTarget>('target');
    this.targetGroupIdentifier =
        registerOutput<String>('targetGroupIdentifier');
  }
}
