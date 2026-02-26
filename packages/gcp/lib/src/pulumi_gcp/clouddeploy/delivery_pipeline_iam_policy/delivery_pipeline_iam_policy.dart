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
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
