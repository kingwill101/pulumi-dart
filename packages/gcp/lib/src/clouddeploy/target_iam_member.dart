import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_iam_member_args.dart';
import 'target_iam_member_condition.dart';

class TargetIamMember extends pulumi.CustomResource {
  late final pulumi.Output<TargetIamMemberCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> member;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [TargetIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetIamMember]. {@macro pulumi_clouddeploy_target_iam_member_target_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetIamMember(
    String name, {
    TargetIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:clouddeploy/targetIamMember:TargetIamMember',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.condition = registerOutput<TargetIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
