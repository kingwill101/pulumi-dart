import 'package:pulumi/pulumi.dart' as pulumi;
import '../custom_target_type_iam_member_condition/custom_target_type_iam_member_condition.dart';
import 'custom_target_type_iam_member_args.dart';

class CustomTargetTypeIamMember extends pulumi.CustomResource {
  late final pulumi.Output<CustomTargetTypeIamMemberCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> member;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  CustomTargetTypeIamMember(
    String name, {
    CustomTargetTypeIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/customTargetTypeIamMember:CustomTargetTypeIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
