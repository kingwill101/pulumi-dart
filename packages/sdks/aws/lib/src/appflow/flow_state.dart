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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<List<FlowDestinationFlowConfig>>? destinationFlowConfigs,
    pulumi.Output<String>? flowStatus,
    pulumi.Output<String>? kmsArn,
    pulumi.Output<FlowMetadataCatalogConfig>? metadataCatalogConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<FlowSourceFlowConfig>? sourceFlowConfig,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<FlowTask>>? tasks,
    pulumi.Output<FlowTriggerConfig>? triggerConfig,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationFlowConfigs = pulumi.Input.asOptionalInput<List<FlowDestinationFlowConfig>>(destinationFlowConfigs),
      flowStatus = pulumi.Input.asOptionalInput<String>(flowStatus),
      kmsArn = pulumi.Input.asOptionalInput<String>(kmsArn),
      metadataCatalogConfig = pulumi.Input.asOptionalInput<FlowMetadataCatalogConfig>(metadataCatalogConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      sourceFlowConfig = pulumi.Input.asOptionalInput<FlowSourceFlowConfig>(sourceFlowConfig),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      tasks = pulumi.Input.asOptionalInput<List<FlowTask>>(tasks),
      triggerConfig = pulumi.Input.asOptionalInput<FlowTriggerConfig>(triggerConfig);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationFlowConfigs: map['destinationFlowConfigs'] == null ? null : pulumi.Output.create<List<FlowDestinationFlowConfig>>(pulumi.Input.decodeList<FlowDestinationFlowConfig>(map['destinationFlowConfigs'], (value) => FlowDestinationFlowConfig.fromMap((value as Map).cast<String, dynamic>()))),
      flowStatus: map['flowStatus'] == null ? null : pulumi.Output.create<String>(map['flowStatus'] as String),
      kmsArn: map['kmsArn'] == null ? null : pulumi.Output.create<String>(map['kmsArn'] as String),
      metadataCatalogConfig: map['metadataCatalogConfig'] == null ? null : pulumi.Output.create<FlowMetadataCatalogConfig>(FlowMetadataCatalogConfig.fromMap((map['metadataCatalogConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sourceFlowConfig: map['sourceFlowConfig'] == null ? null : pulumi.Output.create<FlowSourceFlowConfig>(FlowSourceFlowConfig.fromMap((map['sourceFlowConfig'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      tasks: map['tasks'] == null ? null : pulumi.Output.create<List<FlowTask>>(pulumi.Input.decodeList<FlowTask>(map['tasks'], (value) => FlowTask.fromMap((value as Map).cast<String, dynamic>()))),
      triggerConfig: map['triggerConfig'] == null ? null : pulumi.Output.create<FlowTriggerConfig>(FlowTriggerConfig.fromMap((map['triggerConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

