import 'package:pulumi/pulumi.dart';
import '../ai_endpoint_iam_member_condition/ai_endpoint_iam_member_condition.dart';
import 'ai_endpoint_iam_member_args.dart';

class AiEndpointIamMember extends CustomResource {
  late final Output<AiEndpointIamMemberCondition?> condition;
  late final Output<String> endpoint;
  late final Output<String> etag;
  late final Output<String> location;
  late final Output<String> member;
  late final Output<String> project;
  late final Output<String> role;

  AiEndpointIamMember(
    String name, {
    AiEndpointIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpointIamMember:AiEndpointIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<AiEndpointIamMemberCondition?>();
    this.endpoint = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
