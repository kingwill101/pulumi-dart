import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_iam_binding_condition/instance_iam_binding_condition_workbench.dart';
import 'instance_iam_binding_workbench_args.dart';

class InstanceIamBindingWorkbench extends pulumi.CustomResource {
  late final pulumi.Output<InstanceIamBindingConditionWorkbench?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<List<String>> members;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  InstanceIamBindingWorkbench(
    String name, {
    InstanceIamBindingWorkbenchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workbench/instanceIamBinding:InstanceIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<InstanceIamBindingConditionWorkbench?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
