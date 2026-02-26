import 'package:pulumi/pulumi.dart';
import 'delivery_pipeline_iam_policy_args.dart';

class DeliveryPipelineIamPolicy extends CustomResource {
  late final Output<String> etag;
  late final Output<String> location;
  late final Output<String> name;
  late final Output<String> policyData;
  late final Output<String> project;

  DeliveryPipelineIamPolicy(
    String name, {
    DeliveryPipelineIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/deliveryPipelineIamPolicy:DeliveryPipelineIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
