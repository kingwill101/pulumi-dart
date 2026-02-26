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
        Output.createUnknown<DeliveryPipelineIamMemberCondition?>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
