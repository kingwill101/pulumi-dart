import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_iam_policy_args.dart';

class CustomTargetTypeIamPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;

  /// Creates a new [CustomTargetTypeIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomTargetTypeIamPolicy]. {@macro pulumi_clouddeploy_custom_target_type_iam_policy_custom_target_type_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomTargetTypeIamPolicy(
    String name, {
    CustomTargetTypeIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/customTargetTypeIamPolicy:CustomTargetTypeIamPolicy',
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
