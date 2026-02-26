// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../flow_destination_flow_config/flow_destination_flow_config.dart';
import '../flow_metadata_catalog_config/flow_metadata_catalog_config.dart';
import '../flow_source_flow_config/flow_source_flow_config.dart';
import '../flow_task/flow_task.dart';
import '../flow_trigger_config/flow_trigger_config.dart';

/// The set of arguments for Flow.
class FlowArgs {
  /// Description of the flow you want to create.
  final Input<String>? description;

  /// A Destination Flow Config that controls how Amazon AppFlow places data in the destination connector.
  final Input<List<FlowDestinationFlowConfig>> destinationFlowConfigs;

  /// ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
  final Input<String>? kmsArn;

  /// A Catalog that determines the configuration that Amazon AppFlow uses when it catalogs the data that’s transferred by the associated flow. When Amazon AppFlow catalogs the data from a flow, it stores metadata in a data catalog.
  final Input<FlowMetadataCatalogConfig>? metadataCatalogConfig;

  /// Name of the flow.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Source Flow Config that controls how Amazon AppFlow retrieves data from the source connector.
  final Input<FlowSourceFlowConfig> sourceFlowConfig;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// A Task that Amazon AppFlow performs while transferring the data in the flow run.
  final Input<List<FlowTask>> tasks;

  /// A Trigger that determine how and when the flow runs.
  final Input<FlowTriggerConfig> triggerConfig;

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
    map['destinationFlowConfigs'] = Input.mapInputValue<
            List<FlowDestinationFlowConfig>, List<Map<String, dynamic>>>(
        destinationFlowConfigs,
        (value) =>
            Input.encodeList<FlowDestinationFlowConfig, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final kmsArnValue = kmsArn;
    if (kmsArnValue != null) {
      map['kmsArn'] = kmsArnValue;
    }
    final metadataCatalogConfigValue = metadataCatalogConfig;
    if (metadataCatalogConfigValue != null) {
      map['metadataCatalogConfig'] = Input.mapOptionalInputValue<
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
        Input.mapInputValue<FlowSourceFlowConfig, Map<String, dynamic>>(
            sourceFlowConfig, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['tasks'] =
        Input.mapInputValue<List<FlowTask>, List<Map<String, dynamic>>>(
            tasks,
            (value) => Input.encodeList<FlowTask, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['triggerConfig'] =
        Input.mapInputValue<FlowTriggerConfig, Map<String, dynamic>>(
            triggerConfig, (value) => value.toMap());
    return map;
  }

  factory FlowArgs.fromMap(Map<String, dynamic> map) {
    return FlowArgs(
      description: Input.asOptionalInput<String>(map['description']),
      destinationFlowConfigs: Input.asInput<List<FlowDestinationFlowConfig>>(
          map['destinationFlowConfigs']),
      kmsArn: Input.asOptionalInput<String>(map['kmsArn']),
      metadataCatalogConfig: Input.asOptionalInput<FlowMetadataCatalogConfig>(
          map['metadataCatalogConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      sourceFlowConfig:
          Input.asInput<FlowSourceFlowConfig>(map['sourceFlowConfig']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tasks: Input.asInput<List<FlowTask>>(map['tasks']),
      triggerConfig: Input.asInput<FlowTriggerConfig>(map['triggerConfig']),
    );
  }
}
