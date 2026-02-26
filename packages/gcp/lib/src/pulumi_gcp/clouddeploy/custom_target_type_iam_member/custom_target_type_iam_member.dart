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
        Output.createUnknown<CustomTargetTypeIamMemberCondition?>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
