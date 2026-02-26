import 'package:pulumi/pulumi.dart';
import '../instance_iam_member_condition/instance_iam_member_condition5.dart';
import 'instance_iam_member_args5.dart';

class InstanceIamMember5 extends CustomResource {
  late final Output<InstanceIamMemberCondition5?> condition;
  late final Output<String> etag;
  late final Output<String> location;
  late final Output<String> member;
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> role;

  InstanceIamMember5(
    String name, {
    InstanceIamMemberArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:workbench/instanceIamMember:InstanceIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<InstanceIamMemberCondition5?>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
