import 'package:pulumi/pulumi.dart';
import 'instance_iam_policy_args3.dart';

class InstanceIamPolicy3 extends CustomResource {
  late final Output<String> etag;
  late final Output<String> instanceId;
  late final Output<String> location;
  late final Output<String> policyData;
  late final Output<String> project;

  InstanceIamPolicy3(
    String name, {
    InstanceIamPolicyArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/instanceIamPolicy:InstanceIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = Output.createUnknown<String>();
    this.instanceId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
