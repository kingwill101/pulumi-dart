import 'package:pulumi/pulumi.dart';
import '../target_iam_member_condition/target_iam_member_condition.dart';
import 'target_iam_member_args.dart';

class TargetIamMember extends CustomResource {
  late final Output<TargetIamMemberCondition?> condition;
  late final Output<String> etag;
  late final Output<String> location;
  late final Output<String> member;
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> role;

  TargetIamMember(
    String name, {
    TargetIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/targetIamMember:TargetIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<TargetIamMemberCondition?>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
