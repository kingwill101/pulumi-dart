import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_iam_binding_args.dart';
import 'target_iam_binding_condition.dart';

class TargetIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<TargetIamBindingCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<List<String>> members;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [TargetIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetIamBinding]. {@macro pulumi_clouddeploy_target_iam_binding_target_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetIamBinding(
    String name, {
    TargetIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:clouddeploy/targetIamBinding:TargetIamBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
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
