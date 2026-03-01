import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_binding_args.dart';
import 'instance_iam_binding_condition.dart';

class InstanceIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<InstanceIamBindingCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<List<String>> members;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [InstanceIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceIamBinding]. {@macro pulumi_workbench_instance_iam_binding_instance_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceIamBinding(
    String name, {
    InstanceIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:workbench/instanceIamBinding:InstanceIamBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.condition = registerOutput<InstanceIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
