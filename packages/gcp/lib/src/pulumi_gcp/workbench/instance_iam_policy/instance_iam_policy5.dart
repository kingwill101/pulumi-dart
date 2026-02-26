import 'package:pulumi/pulumi.dart';
import 'instance_iam_policy_args5.dart';

class InstanceIamPolicy5 extends CustomResource {
  late final Output<String> etag;
  late final Output<String> location;
  late final Output<String> name;
  late final Output<String> policyData;
  late final Output<String> project;

  InstanceIamPolicy5(
    String name, {
    InstanceIamPolicyArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:workbench/instanceIamPolicy:InstanceIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
