import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_iam_member_args.dart';
import 'ai_endpoint_iam_member_condition.dart';

class AiEndpointIamMember extends pulumi.CustomResource {
  late final pulumi.Output<AiEndpointIamMemberCondition?> condition;
  late final pulumi.Output<String> endpoint;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> member;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [AiEndpointIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiEndpointIamMember]. {@macro pulumi_vertex_ai_endpoint_iam_member_ai_endpoint_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiEndpointIamMember(
    String name, {
    AiEndpointIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpointIamMember:AiEndpointIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<AiEndpointIamMemberCondition?>('condition');
    this.endpoint = registerOutput<String>('endpoint');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
