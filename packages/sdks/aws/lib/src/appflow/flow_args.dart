// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config.dart';
import 'flow_metadata_catalog_config.dart';
import 'flow_source_flow_config.dart';
import 'flow_task.dart';
import 'flow_trigger_config.dart';

/// {@template pulumi_appflow_flow_flow_args_doc}
/// The set of arguments for Flow.
/// {@endtemplate}
/// {@macro pulumi_appflow_flow_flow_args_doc}
class FlowArgs {
  /// Description of the flow.
  final pulumi.Input<String?>? description;
  /// Configuration that controls how Amazon AppFlow places data in the destination connector. See the `destinationFlowConfig` Block for details.
  final pulumi.Input<List<FlowDestinationFlowConfig>> destinationFlowConfigs;
  /// ARN of the KMS key you provide for encryption. Required if you do not want to use the Amazon AppFlow-managed KMS key. Uses the Amazon AppFlow-managed KMS key when not provided.
  final pulumi.Input<String?>? kmsArn;
  /// Configuration that determines how Amazon AppFlow catalogs the data that the flow transfers. See the `metadataCatalogConfig` Block for details.
  final pulumi.Input<FlowMetadataCatalogConfig?>? metadataCatalogConfig;
  /// Name of the flow.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration that controls how Amazon AppFlow retrieves data from the source connector. See the `sourceFlowConfig` Block for details.
  final pulumi.Input<FlowSourceFlowConfig> sourceFlowConfig;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Tasks that Amazon AppFlow performs while transferring the data in the flow run. See the `task` Block for details.
  final pulumi.Input<List<FlowTask>> tasks;
  /// Configuration that determines how and when the flow runs. See the `triggerConfig` Block for details.
  final pulumi.Input<FlowTriggerConfig> triggerConfig;

  /// Creates a new [FlowArgs].
  /// [description] Description of the flow.
  /// [destinationFlowConfigs] Configuration that controls how Amazon AppFlow places data in the destination connector. See the `destinationFlowConfig` Block for details.
  /// [kmsArn] ARN of the KMS key you provide for encryption. Required if you do not want to use the Amazon AppFlow-managed KMS key. Uses the Amazon AppFlow-managed KMS key when not provided.
  /// [metadataCatalogConfig] Configuration that determines how Amazon AppFlow catalogs the data that the flow transfers. See the `metadataCatalogConfig` Block for details.
  /// [name] Name of the flow.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceFlowConfig] Configuration that controls how Amazon AppFlow retrieves data from the source connector. See the `sourceFlowConfig` Block for details.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tasks] Tasks that Amazon AppFlow performs while transferring the data in the flow run. See the `task` Block for details.
  /// [triggerConfig] Configuration that determines how and when the flow runs. See the `triggerConfig` Block for details.
  const FlowArgs({
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
    return <String, dynamic>{
      'description': ?description,
      'destinationFlowConfigs': pulumi.Input.mapInputValue<List<FlowDestinationFlowConfig>, List<Map<String, dynamic>>>(destinationFlowConfigs, (value) => pulumi.Input.encodeList<FlowDestinationFlowConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kmsArn': ?kmsArn,
      'metadataCatalogConfig': ?pulumi.Input.mapOptionalInputValue<FlowMetadataCatalogConfig, Map<String, dynamic>>(metadataCatalogConfig, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'sourceFlowConfig': pulumi.Input.mapInputValue<FlowSourceFlowConfig, Map<String, dynamic>>(sourceFlowConfig, (value) => value.toMap()),
      'tags': ?tags,
      'tasks': pulumi.Input.mapInputValue<List<FlowTask>, List<Map<String, dynamic>>>(tasks, (value) => pulumi.Input.encodeList<FlowTask, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggerConfig': pulumi.Input.mapInputValue<FlowTriggerConfig, Map<String, dynamic>>(triggerConfig, (value) => value.toMap()),
    };
  }

  factory FlowArgs.fromMap(Map<String, dynamic> map) {
    return FlowArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationFlowConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<FlowDestinationFlowConfig>(map['destinationFlowConfigs']!, (value) => FlowDestinationFlowConfig.fromMap((value as Map).cast<String, dynamic>()))),
      kmsArn: (() { final guardedValue = map['kmsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataCatalogConfig: (() { final guardedValue = map['metadataCatalogConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowMetadataCatalogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceFlowConfig: pulumi.Input.fromValue(FlowSourceFlowConfig.fromMap((map['sourceFlowConfig']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tasks: pulumi.Input.fromValue(pulumi.Input.decodeList<FlowTask>(map['tasks']!, (value) => FlowTask.fromMap((value as Map).cast<String, dynamic>()))),
      triggerConfig: pulumi.Input.fromValue(FlowTriggerConfig.fromMap((map['triggerConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
