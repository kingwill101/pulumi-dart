import 'package:pulumi/pulumi.dart';
import '../ai_endpoint_iam_binding_condition/ai_endpoint_iam_binding_condition.dart';
import 'ai_endpoint_iam_binding_args.dart';

class AiEndpointIamBinding extends CustomResource {
  late final Output<AiEndpointIamBindingCondition?> condition;
  late final Output<String> endpoint;
  late final Output<String> etag;
  late final Output<String> location;
  late final Output<List<String>> members;
  late final Output<String> project;
  late final Output<String> role;

  AiEndpointIamBinding(
    String name, {
    AiEndpointIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpointIamBinding:AiEndpointIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
