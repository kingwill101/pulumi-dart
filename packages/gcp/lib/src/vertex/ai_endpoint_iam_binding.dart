import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_iam_binding_args.dart';
import 'ai_endpoint_iam_binding_condition.dart';

class AiEndpointIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<AiEndpointIamBindingCondition?> condition;
  late final pulumi.Output<String> endpoint;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<List<String>> members;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [AiEndpointIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiEndpointIamBinding]. {@macro pulumi_vertex_ai_endpoint_iam_binding_ai_endpoint_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
