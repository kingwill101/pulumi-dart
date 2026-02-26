import 'package:pulumi/pulumi.dart';
import '../target_iam_binding_condition/target_iam_binding_condition.dart';
import 'target_iam_binding_args.dart';

class TargetIamBinding extends CustomResource {
  late final Output<TargetIamBindingCondition?> condition;
  late final Output<String> etag;
  late final Output<String> location;
  late final Output<List<String>> members;
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> role;

  TargetIamBinding(
    String name, {
    TargetIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/targetIamBinding:TargetIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<TargetIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
