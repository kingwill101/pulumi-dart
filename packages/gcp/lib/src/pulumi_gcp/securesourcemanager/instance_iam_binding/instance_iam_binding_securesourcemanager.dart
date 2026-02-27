import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_iam_binding_condition/instance_iam_binding_condition_securesourcemanager.dart';
import 'instance_iam_binding_securesourcemanager_args.dart';

class InstanceIamBindingSecuresourcemanager extends pulumi.CustomResource {
  late final pulumi.Output<InstanceIamBindingConditionSecuresourcemanager?>
      condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> instanceId;
  late final pulumi.Output<String> location;
  late final pulumi.Output<List<String>> members;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  InstanceIamBindingSecuresourcemanager(
    String name, {
    InstanceIamBindingSecuresourcemanagerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/instanceIamBinding:InstanceIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<InstanceIamBindingConditionSecuresourcemanager?>(
            'condition');
    this.etag = registerOutput<String>('etag');
    this.instanceId = registerOutput<String>('instanceId');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
