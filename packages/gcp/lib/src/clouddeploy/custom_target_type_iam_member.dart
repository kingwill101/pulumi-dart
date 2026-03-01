import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_iam_member_args.dart';
import 'custom_target_type_iam_member_condition.dart';

class CustomTargetTypeIamMember extends pulumi.CustomResource {
  late final pulumi.Output<CustomTargetTypeIamMemberCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> member;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [CustomTargetTypeIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomTargetTypeIamMember]. {@macro pulumi_clouddeploy_custom_target_type_iam_member_custom_target_type_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
    this.condition = registerOutput<CustomTargetTypeIamMemberCondition?>(
      'condition',
    );
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
