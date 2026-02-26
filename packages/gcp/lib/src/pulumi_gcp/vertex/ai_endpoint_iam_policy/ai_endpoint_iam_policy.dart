import 'package:pulumi/pulumi.dart';
import 'ai_endpoint_iam_policy_args.dart';

class AiEndpointIamPolicy extends CustomResource {
  late final Output<String> endpoint;
  late final Output<String> etag;
  late final Output<String> location;
  late final Output<String> policyData;
  late final Output<String> project;

  AiEndpointIamPolicy(
    String name, {
    AiEndpointIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpointIamPolicy:AiEndpointIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.endpoint = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
