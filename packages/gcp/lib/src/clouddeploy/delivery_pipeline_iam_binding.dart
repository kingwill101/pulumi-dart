import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_iam_binding_args.dart';
import 'delivery_pipeline_iam_binding_condition.dart';

class DeliveryPipelineIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<DeliveryPipelineIamBindingCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<List<String>> members;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [DeliveryPipelineIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeliveryPipelineIamBinding]. {@macro pulumi_clouddeploy_delivery_pipeline_iam_binding_delivery_pipeline_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeliveryPipelineIamBinding(
    String name, {
    DeliveryPipelineIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:clouddeploy/deliveryPipelineIamBinding:DeliveryPipelineIamBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.condition = registerOutput<DeliveryPipelineIamBindingCondition?>(
      'condition',
    );
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
