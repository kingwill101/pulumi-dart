import 'package:pulumi/pulumi.dart';
import '../delivery_pipeline_iam_member_condition/delivery_pipeline_iam_member_condition.dart';
import 'delivery_pipeline_iam_member_args.dart';

class DeliveryPipelineIamMember extends CustomResource {
  late final Output<DeliveryPipelineIamMemberCondition?> condition;
  late final Output<String> etag;
  late final Output<String> location;
  late final Output<String> member;
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> role;

  DeliveryPipelineIamMember(
    String name, {
    DeliveryPipelineIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/deliveryPipelineIamMember:DeliveryPipelineIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<DeliveryPipelineIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
