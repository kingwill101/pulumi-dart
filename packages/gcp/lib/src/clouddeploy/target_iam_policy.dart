import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_iam_policy_args.dart';

class TargetIamPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;

  /// Creates a new [TargetIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetIamPolicy]. {@macro pulumi_clouddeploy_target_iam_policy_target_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetIamPolicy(
    String name, {
    TargetIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/targetIamPolicy:TargetIamPolicy',
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
