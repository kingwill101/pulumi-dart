import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_policy_securesourcemanager_args.dart';

class InstanceIamPolicySecuresourcemanager extends pulumi.CustomResource {
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> instanceId;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;

  InstanceIamPolicySecuresourcemanager(
    String name, {
    InstanceIamPolicySecuresourcemanagerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/instanceIamPolicy:InstanceIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.instanceId = registerOutput<String>('instanceId');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
