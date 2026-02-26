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
    this.condition = Output.createUnknown<InstanceIamBindingCondition3?>();
    this.etag = Output.createUnknown<String>();
    this.instanceId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.members = Output.createUnknown<List<String>>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
