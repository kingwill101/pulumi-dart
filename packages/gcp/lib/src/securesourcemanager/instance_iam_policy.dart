import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_policy_args.dart';

class InstanceIamPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> instanceId;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;

  /// Creates a new [InstanceIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceIamPolicy]. {@macro pulumi_securesourcemanager_instance_iam_policy_instance_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceIamPolicy(
    String name, {
    InstanceIamPolicyArgs? args,
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
