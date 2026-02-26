import 'package:pulumi/pulumi.dart';
import '../custom_target_type_iam_binding_condition/custom_target_type_iam_binding_condition.dart';
import 'custom_target_type_iam_binding_args.dart';

class CustomTargetTypeIamBinding extends CustomResource {
  late final Output<CustomTargetTypeIamBindingCondition?> condition;
  late final Output<String> etag;
  late final Output<String> location;
  late final Output<List<String>> members;
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> role;

  CustomTargetTypeIamBinding(
    String name, {
    CustomTargetTypeIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/customTargetTypeIamBinding:CustomTargetTypeIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
