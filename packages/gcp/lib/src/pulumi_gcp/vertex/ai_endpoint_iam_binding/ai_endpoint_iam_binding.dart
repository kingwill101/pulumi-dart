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
    this.condition = Output.createUnknown<AiEndpointIamBindingCondition?>();
    this.endpoint = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.members = Output.createUnknown<List<String>>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
