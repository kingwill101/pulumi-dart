import 'package:pulumi/pulumi.dart';
import '../custom_target_type_iam_member_condition/custom_target_type_iam_member_condition.dart';
import 'custom_target_type_iam_member_args.dart';

class CustomTargetTypeIamMember extends CustomResource {
  late final Output<CustomTargetTypeIamMemberCondition?> condition;
  late final Output<String> etag;
  late final Output<String> location;
  late final Output<String> member;
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> role;

  CustomTargetTypeIamMember(
    String name, {
    CustomTargetTypeIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/customTargetTypeIamMember:CustomTargetTypeIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<CustomTargetTypeIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
