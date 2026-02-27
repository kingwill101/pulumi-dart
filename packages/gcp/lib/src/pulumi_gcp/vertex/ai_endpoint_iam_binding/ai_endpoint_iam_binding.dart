import 'package:pulumi/pulumi.dart' as pulumi;
import '../ai_endpoint_iam_binding_condition/ai_endpoint_iam_binding_condition.dart';
import 'ai_endpoint_iam_binding_args.dart';

class AiEndpointIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<AiEndpointIamBindingCondition?> condition;
  late final pulumi.Output<String> endpoint;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<List<String>> members;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  AiEndpointIamBinding(
    String name, {
    AiEndpointIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpointIamBinding:AiEndpointIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<AiEndpointIamBindingCondition?>('condition');
    this.endpoint = registerOutput<String>('endpoint');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
