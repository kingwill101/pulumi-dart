import 'package:pulumi/pulumi.dart';
import '../instance_iam_binding_condition/instance_iam_binding_condition5.dart';
import 'instance_iam_binding_args5.dart';

class InstanceIamBinding5 extends CustomResource {
  late final Output<InstanceIamBindingCondition5?> condition;
  late final Output<String> etag;
  late final Output<String> location;
  late final Output<List<String>> members;
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> role;

  InstanceIamBinding5(
    String name, {
    InstanceIamBindingArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:workbench/instanceIamBinding:InstanceIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<InstanceIamBindingCondition5?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
