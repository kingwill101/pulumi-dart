import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_iam_policy_args.dart';

class AiEndpointIamPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> endpoint;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;

  AiEndpointIamPolicy(
    String name, {
    AiEndpointIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpointIamPolicy:AiEndpointIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.endpoint = registerOutput<String>('endpoint');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
