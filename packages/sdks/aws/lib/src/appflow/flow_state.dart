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
  final pulumi.Input<String?>? arn;
  /// Description of the flow.
  final pulumi.Input<String?>? description;
  /// Configuration that controls how Amazon AppFlow places data in the destination connector. See the `destinationFlowConfig` Block for details.
  final pulumi.Input<List<FlowDestinationFlowConfig>?>? destinationFlowConfigs;
  /// Current status of the flow.
  final pulumi.Input<String?>? flowStatus;
  /// ARN of the KMS key you provide for encryption. Required if you do not want to use the Amazon AppFlow-managed KMS key. Uses the Amazon AppFlow-managed KMS key when not provided.
  final pulumi.Input<String?>? kmsArn;
  /// Configuration that determines how Amazon AppFlow catalogs the data that the flow transfers. See the `metadataCatalogConfig` Block for details.
  final pulumi.Input<FlowMetadataCatalogConfig?>? metadataCatalogConfig;
  /// Name of the flow.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration that controls how Amazon AppFlow retrieves data from the source connector. See the `sourceFlowConfig` Block for details.
  final pulumi.Input<FlowSourceFlowConfig?>? sourceFlowConfig;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Tasks that Amazon AppFlow performs while transferring the data in the flow run. See the `task` Block for details.
  final pulumi.Input<List<FlowTask>?>? tasks;
  /// Configuration that determines how and when the flow runs. See the `triggerConfig` Block for details.
  final pulumi.Input<FlowTriggerConfig?>? triggerConfig;

  /// Creates a new [FlowState].
  /// [arn] Flow's ARN.
  /// [description] Description of the flow.
  /// [destinationFlowConfigs] Configuration that controls how Amazon AppFlow places data in the destination connector. See the `destinationFlowConfig` Block for details.
  /// [flowStatus] Current status of the flow.
  /// [kmsArn] ARN of the KMS key you provide for encryption. Required if you do not want to use the Amazon AppFlow-managed KMS key. Uses the Amazon AppFlow-managed KMS key when not provided.
  /// [metadataCatalogConfig] Configuration that determines how Amazon AppFlow catalogs the data that the flow transfers. See the `metadataCatalogConfig` Block for details.
  /// [name] Name of the flow.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceFlowConfig] Configuration that controls how Amazon AppFlow retrieves data from the source connector. See the `sourceFlowConfig` Block for details.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [tasks] Tasks that Amazon AppFlow performs while transferring the data in the flow run. See the `task` Block for details.
  /// [triggerConfig] Configuration that determines how and when the flow runs. See the `triggerConfig` Block for details.
  const FlowState({
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
