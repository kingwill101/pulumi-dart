// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../flow_destination_flow_config/flow_destination_flow_config.dart';
import '../flow_metadata_catalog_config/flow_metadata_catalog_config.dart';
import '../flow_source_flow_config/flow_source_flow_config.dart';
import '../flow_task/flow_task.dart';
import '../flow_trigger_config/flow_trigger_config.dart';

/// The set of arguments for Flow.
class FlowArgs {
  /// Description of the flow you want to create.
  final pulumi.Input<String>? description;

  /// A Destination Flow Config that controls how Amazon AppFlow places data in the destination connector.
  final pulumi.Input<List<FlowDestinationFlowConfig>> destinationFlowConfigs;

  /// ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
  final pulumi.Input<String>? kmsArn;

  /// A Catalog that determines the configuration that Amazon AppFlow uses when it catalogs the data that’s transferred by the associated flow. When Amazon AppFlow catalogs the data from a flow, it stores metadata in a data catalog.
  final pulumi.Input<FlowMetadataCatalogConfig>? metadataCatalogConfig;

  /// Name of the flow.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Source Flow Config that controls how Amazon AppFlow retrieves data from the source connector.
  final pulumi.Input<FlowSourceFlowConfig> sourceFlowConfig;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A Task that Amazon AppFlow performs while transferring the data in the flow run.
  final pulumi.Input<List<FlowTask>> tasks;

  /// A Trigger that determine how and when the flow runs.
  final pulumi.Input<FlowTriggerConfig> triggerConfig;

  FlowArgs({
    this.description,
    required this.destinationFlowConfigs,
    this.kmsArn,
    this.metadataCatalogConfig,
    this.name,
    this.region,
    required this.sourceFlowConfig,
    this.tags,
    required this.tasks,
    required this.triggerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['destinationFlowConfigs'] = pulumi.Input.mapInputValue<
            List<FlowDestinationFlowConfig>, List<Map<String, dynamic>>>(
        destinationFlowConfigs,
        (value) => pulumi.Input.encodeList<FlowDestinationFlowConfig,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final kmsArnValue = kmsArn;
    if (kmsArnValue != null) {
      map['kmsArn'] = kmsArnValue;
    }
    final metadataCatalogConfigValue = metadataCatalogConfig;
    if (metadataCatalogConfigValue != null) {
      map['metadataCatalogConfig'] = pulumi.Input.mapOptionalInputValue<
              FlowMetadataCatalogConfig, Map<String, dynamic>>(
          metadataCatalogConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sourceFlowConfig'] =
        pulumi.Input.mapInputValue<FlowSourceFlowConfig, Map<String, dynamic>>(
            sourceFlowConfig, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['tasks'] =
        pulumi.Input.mapInputValue<List<FlowTask>, List<Map<String, dynamic>>>(
            tasks,
            (value) => pulumi.Input.encodeList<FlowTask, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['triggerConfig'] =
        pulumi.Input.mapInputValue<FlowTriggerConfig, Map<String, dynamic>>(
            triggerConfig, (value) => value.toMap());
    return map;
  }

  factory FlowArgs.fromMap(Map<String, dynamic> map) {
    return FlowArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      destinationFlowConfigs:
          pulumi.Input.asInput<List<FlowDestinationFlowConfig>>(
              map['destinationFlowConfigs']),
      kmsArn: pulumi.Input.asOptionalInput<String>(map['kmsArn']),
      metadataCatalogConfig:
          pulumi.Input.asOptionalInput<FlowMetadataCatalogConfig>(
              map['metadataCatalogConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sourceFlowConfig:
          pulumi.Input.asInput<FlowSourceFlowConfig>(map['sourceFlowConfig']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      tasks: pulumi.Input.asInput<List<FlowTask>>(map['tasks']),
      triggerConfig:
          pulumi.Input.asInput<FlowTriggerConfig>(map['triggerConfig']),
    );
  }
}
