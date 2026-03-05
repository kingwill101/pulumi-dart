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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationFlowConfigs: (() { final guardedValue = map['destinationFlowConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FlowDestinationFlowConfig>(guardedValue, (value) => FlowDestinationFlowConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      flowStatus: (() { final guardedValue = map['flowStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsArn: (() { final guardedValue = map['kmsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataCatalogConfig: (() { final guardedValue = map['metadataCatalogConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowMetadataCatalogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceFlowConfig: (() { final guardedValue = map['sourceFlowConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowSourceFlowConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tasks: (() { final guardedValue = map['tasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FlowTask>(guardedValue, (value) => FlowTask.fromMap((value as Map).cast<String, dynamic>()))); })(),
      triggerConfig: (() { final guardedValue = map['triggerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

