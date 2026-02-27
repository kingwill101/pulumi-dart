import 'package:pulumi/pulumi.dart';
import '../flow_destination_flow_config/flow_destination_flow_config.dart';
import '../flow_metadata_catalog_config/flow_metadata_catalog_config.dart';
import '../flow_source_flow_config/flow_source_flow_config.dart';
import '../flow_task/flow_task.dart';
import '../flow_trigger_config/flow_trigger_config.dart';
import 'flow_args.dart';

/// Provides an AppFlow flow resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the AppFlow flow.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import AppFlow flows using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appflow/flow:Flow example example-flow
/// ```
class Flow extends CustomResource {
  /// Flow's ARN.
  late final Output<String> arn;

  /// Description of the flow you want to create.
  late final Output<String?> description;

  /// A Destination Flow Config that controls how Amazon AppFlow places data in the destination connector.
  late final Output<List<FlowDestinationFlowConfig>> destinationFlowConfigs;

  /// The current status of the flow.
  late final Output<String> flowStatus;

  /// ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
  late final Output<String> kmsArn;

  /// A Catalog that determines the configuration that Amazon AppFlow uses when it catalogs the data that’s transferred by the associated flow. When Amazon AppFlow catalogs the data from a flow, it stores metadata in a data catalog.
  late final Output<FlowMetadataCatalogConfig> metadataCatalogConfig;

  /// Name of the flow.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Source Flow Config that controls how Amazon AppFlow retrieves data from the source connector.
  late final Output<FlowSourceFlowConfig> sourceFlowConfig;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// A Task that Amazon AppFlow performs while transferring the data in the flow run.
  late final Output<List<FlowTask>> tasks;

  /// A Trigger that determine how and when the flow runs.
  late final Output<FlowTriggerConfig> triggerConfig;

  Flow(
    String name, {
    FlowArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appflow/flow:Flow',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.destinationFlowConfigs =
        registerOutput<List<FlowDestinationFlowConfig>>(
            'destinationFlowConfigs');
    this.flowStatus = registerOutput<String>('flowStatus');
    this.kmsArn = registerOutput<String>('kmsArn');
    this.metadataCatalogConfig =
        registerOutput<FlowMetadataCatalogConfig>('metadataCatalogConfig');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.sourceFlowConfig =
        registerOutput<FlowSourceFlowConfig>('sourceFlowConfig');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tasks = registerOutput<List<FlowTask>>('tasks');
    this.triggerConfig = registerOutput<FlowTriggerConfig>('triggerConfig');
  }
}
