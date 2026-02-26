import 'package:pulumi/pulumi.dart';
import '../instance_iam_member_condition/instance_iam_member_condition3.dart';
import 'instance_iam_member_args3.dart';

class InstanceIamMember3 extends CustomResource {
  late final Output<InstanceIamMemberCondition3?> condition;
  late final Output<String> etag;
  late final Output<String> instanceId;
  late final Output<String> location;
  late final Output<String> member;
  late final Output<String> project;
  late final Output<String> role;

  InstanceIamMember3(
    String name, {
    InstanceIamMemberArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/instanceIamMember:InstanceIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<InstanceIamMemberCondition3?>('condition');
    this.etag = registerOutput<String>('etag');
    this.instanceId = registerOutput<String>('instanceId');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
