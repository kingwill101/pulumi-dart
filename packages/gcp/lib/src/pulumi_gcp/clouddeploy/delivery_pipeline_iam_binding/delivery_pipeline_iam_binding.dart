import 'package:pulumi/pulumi.dart';
import '../delivery_pipeline_iam_binding_condition/delivery_pipeline_iam_binding_condition.dart';
import 'delivery_pipeline_iam_binding_args.dart';

class DeliveryPipelineIamBinding extends CustomResource {
  late final Output<DeliveryPipelineIamBindingCondition?> condition;
  late final Output<String> etag;
  late final Output<String> location;
  late final Output<List<String>> members;
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> role;

  DeliveryPipelineIamBinding(
    String name, {
    DeliveryPipelineIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/deliveryPipelineIamBinding:DeliveryPipelineIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        Output.createUnknown<DeliveryPipelineIamBindingCondition?>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.members = Output.createUnknown<List<String>>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
