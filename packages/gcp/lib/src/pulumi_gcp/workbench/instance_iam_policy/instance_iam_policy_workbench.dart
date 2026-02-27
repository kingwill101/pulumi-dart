import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_policy_workbench_args.dart';

class InstanceIamPolicyWorkbench extends pulumi.CustomResource {
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;

  InstanceIamPolicyWorkbench(
    String name, {
    InstanceIamPolicyWorkbenchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workbench/instanceIamPolicy:InstanceIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
