import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_iam_member_condition/instance_iam_member_condition_securesourcemanager.dart';
import 'instance_iam_member_securesourcemanager_args.dart';

class InstanceIamMemberSecuresourcemanager extends pulumi.CustomResource {
  late final pulumi.Output<InstanceIamMemberConditionSecuresourcemanager?>
      condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> instanceId;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> member;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  InstanceIamMemberSecuresourcemanager(
    String name, {
    InstanceIamMemberSecuresourcemanagerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/instanceIamMember:InstanceIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<InstanceIamMemberConditionSecuresourcemanager?>(
            'condition');
    this.etag = registerOutput<String>('etag');
    this.instanceId = registerOutput<String>('instanceId');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
