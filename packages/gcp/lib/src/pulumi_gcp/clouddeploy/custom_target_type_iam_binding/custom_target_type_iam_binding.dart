import 'package:pulumi/pulumi.dart' as pulumi;
import '../custom_target_type_iam_binding_condition/custom_target_type_iam_binding_condition.dart';
import 'custom_target_type_iam_binding_args.dart';

class CustomTargetTypeIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<CustomTargetTypeIamBindingCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<List<String>> members;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  CustomTargetTypeIamBinding(
    String name, {
    CustomTargetTypeIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/customTargetTypeIamBinding:CustomTargetTypeIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<CustomTargetTypeIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
