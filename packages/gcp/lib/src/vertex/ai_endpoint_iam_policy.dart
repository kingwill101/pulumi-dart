import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_iam_policy_args.dart';

class AiEndpointIamPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> endpoint;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;

  /// Creates a new [AiEndpointIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiEndpointIamPolicy]. {@macro pulumi_vertex_ai_endpoint_iam_policy_ai_endpoint_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
