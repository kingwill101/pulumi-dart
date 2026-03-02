// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config.dart';
import 'flow_metadata_catalog_config.dart';
import 'flow_source_flow_config.dart';
import 'flow_task.dart';
import 'flow_trigger_config.dart';

/// Input properties used for looking up and filtering Flow resources.
class FlowState {
  /// Flow's ARN.
  final pulumi.Input<String>? arn;
  /// Description of the flow you want to create.
  final pulumi.Input<String>? description;
  /// A Destination Flow Config that controls how Amazon AppFlow places data in the destination connector.
  final pulumi.Input<List<FlowDestinationFlowConfig>>? destinationFlowConfigs;
  /// The current status of the flow.
  final pulumi.Input<String>? flowStatus;
  /// ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
  final pulumi.Input<String>? kmsArn;
  /// A Catalog that determines the configuration that Amazon AppFlow uses when it catalogs the data that’s transferred by the associated flow. When Amazon AppFlow catalogs the data from a flow, it stores metadata in a data catalog.
  final pulumi.Input<FlowMetadataCatalogConfig>? metadataCatalogConfig;
  /// Name of the flow.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Source Flow Config that controls how Amazon AppFlow retrieves data from the source connector.
  final pulumi.Input<FlowSourceFlowConfig>? sourceFlowConfig;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// A Task that Amazon AppFlow performs while transferring the data in the flow run.
  final pulumi.Input<List<FlowTask>>? tasks;
  /// A Trigger that determine how and when the flow runs.
  final pulumi.Input<FlowTriggerConfig>? triggerConfig;

  /// Creates a new [FlowState].
  /// [arn] Flow's ARN.
  /// [description] Description of the flow you want to create.
  /// [destinationFlowConfigs] A Destination Flow Config that controls how Amazon AppFlow places data in the destination connector.
  /// [flowStatus] The current status of the flow.
  /// [kmsArn] ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
  /// [metadataCatalogConfig] A Catalog that determines the configuration that Amazon AppFlow uses when it catalogs the data that’s transferred by the associated flow. When Amazon AppFlow catalogs the data from a flow, it stores metadata in a data catalog.
  /// [name] Name of the flow.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceFlowConfig] The Source Flow Config that controls how Amazon AppFlow retrieves data from the source connector.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [tasks] A Task that Amazon AppFlow performs while transferring the data in the flow run.
  /// [triggerConfig] A Trigger that determine how and when the flow runs.
  FlowState({
    this.arn,
    this.description,
    this.destinationFlowConfigs,
    this.flowStatus,
    this.kmsArn,
    this.metadataCatalogConfig,
    this.name,
    this.region,
    this.sourceFlowConfig,
    this.tags,
    this.tagsAll,
    this.tasks,
    this.triggerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'destinationFlowConfigs': ?pulumi.Input.mapOptionalInputValue<List<FlowDestinationFlowConfig>, List<Map<String, dynamic>>>(destinationFlowConfigs, (value) => pulumi.Input.encodeList<FlowDestinationFlowConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'flowStatus': ?flowStatus,
      'kmsArn': ?kmsArn,
      'metadataCatalogConfig': ?pulumi.Input.mapOptionalInputValue<FlowMetadataCatalogConfig, Map<String, dynamic>>(metadataCatalogConfig, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'sourceFlowConfig': ?pulumi.Input.mapOptionalInputValue<FlowSourceFlowConfig, Map<String, dynamic>>(sourceFlowConfig, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tasks': ?pulumi.Input.mapOptionalInputValue<List<FlowTask>, List<Map<String, dynamic>>>(tasks, (value) => pulumi.Input.encodeList<FlowTask, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggerConfig': ?pulumi.Input.mapOptionalInputValue<FlowTriggerConfig, Map<String, dynamic>>(triggerConfig, (value) => value.toMap()),
    };
  }

  factory FlowState.fromMap(Map<String, dynamic> map) {
    return FlowState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationFlowConfigs: map['destinationFlowConfigs'] == null ? null : (pulumi.Input.decodeList<FlowDestinationFlowConfig>(map['destinationFlowConfigs'], (value) => FlowDestinationFlowConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      flowStatus: map['flowStatus'] == null ? null : (map['flowStatus'] as String).input(),
      kmsArn: map['kmsArn'] == null ? null : (map['kmsArn'] as String).input(),
      metadataCatalogConfig: map['metadataCatalogConfig'] == null ? null : (FlowMetadataCatalogConfig.fromMap((map['metadataCatalogConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sourceFlowConfig: map['sourceFlowConfig'] == null ? null : (FlowSourceFlowConfig.fromMap((map['sourceFlowConfig'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      tasks: map['tasks'] == null ? null : (pulumi.Input.decodeList<FlowTask>(map['tasks'], (value) => FlowTask.fromMap((value as Map).cast<String, dynamic>()))).input(),
      triggerConfig: map['triggerConfig'] == null ? null : (FlowTriggerConfig.fromMap((map['triggerConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

