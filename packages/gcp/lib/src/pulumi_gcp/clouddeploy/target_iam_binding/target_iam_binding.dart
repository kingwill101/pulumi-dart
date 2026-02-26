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
    this.condition = Output.createUnknown<TargetIamBindingCondition?>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.members = Output.createUnknown<List<String>>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
