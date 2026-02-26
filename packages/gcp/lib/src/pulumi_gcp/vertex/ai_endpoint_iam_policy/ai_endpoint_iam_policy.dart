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
    this.endpoint = registerOutput<String>('endpoint');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
