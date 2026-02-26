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
    this.condition = Output.createUnknown<InstanceIamBindingCondition5?>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.members = Output.createUnknown<List<String>>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
