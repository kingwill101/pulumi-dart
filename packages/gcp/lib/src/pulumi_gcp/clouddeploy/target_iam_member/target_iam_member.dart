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
    this.condition = registerOutput<TargetIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
