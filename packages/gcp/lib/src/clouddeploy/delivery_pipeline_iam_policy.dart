import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_iam_policy_args.dart';

class DeliveryPipelineIamPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;

  /// Creates a new [DeliveryPipelineIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeliveryPipelineIamPolicy]. {@macro pulumi_clouddeploy_delivery_pipeline_iam_policy_delivery_pipeline_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeliveryPipelineIamPolicy(
    String name, {
    DeliveryPipelineIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/deliveryPipelineIamPolicy:DeliveryPipelineIamPolicy',
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
