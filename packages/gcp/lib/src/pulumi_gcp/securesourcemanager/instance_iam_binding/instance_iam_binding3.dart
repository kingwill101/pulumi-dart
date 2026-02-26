import 'package:pulumi/pulumi.dart';
import '../instance_iam_binding_condition/instance_iam_binding_condition3.dart';
import 'instance_iam_binding_args3.dart';

class InstanceIamBinding3 extends CustomResource {
  late final Output<InstanceIamBindingCondition3?> condition;
  late final Output<String> etag;
  late final Output<String> instanceId;
  late final Output<String> location;
  late final Output<List<String>> members;
  late final Output<String> project;
  late final Output<String> role;

  InstanceIamBinding3(
    String name, {
    InstanceIamBindingArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/instanceIamBinding:InstanceIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<InstanceIamBindingCondition3?>('condition');
    this.etag = registerOutput<String>('etag');
    this.instanceId = registerOutput<String>('instanceId');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
