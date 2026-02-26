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
    this.condition = Output.createUnknown<InstanceIamMemberCondition3?>();
    this.etag = Output.createUnknown<String>();
    this.instanceId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
