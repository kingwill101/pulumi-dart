import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_member_args.dart';
import 'instance_iam_member_condition.dart';

class InstanceIamMember extends pulumi.CustomResource {
  late final pulumi.Output<InstanceIamMemberCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> member;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [InstanceIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceIamMember]. {@macro pulumi_workbench_instance_iam_member_instance_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceIamMember(
    String name, {
    InstanceIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workbench/instanceIamMember:InstanceIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<InstanceIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
