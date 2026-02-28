// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_config.dart';
import 'free_instance_metadata.dart';
import 'instance_instance_type.dart';

/// {@template pulumi_spanner_v1_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_spanner_v1_instance_args_doc}
class InstanceArgs {
  /// Optional. The autoscaling configuration. Autoscaling is enabled if this field is set. When autoscaling is enabled, node_count and processing_units are treated as OUTPUT_ONLY fields and reflect the current compute capacity allocated to the instance.
  final pulumi.Input<AutoscalingConfig>? autoscalingConfig;

  /// The name of the instance's configuration. Values are of the form `projects//instanceConfigs/`. See also InstanceConfig and ListInstanceConfigs.
  final pulumi.Input<String> config;

  /// The descriptive name for this instance as it appears in UIs. Must be unique per project and between 4 and 30 characters in length.
  final pulumi.Input<String> displayName;

  /// Deprecated. This field is not populated.
  final pulumi.Input<List<String>>? endpointUris;

  /// Free instance metadata. Only populated for free instances.
  final pulumi.Input<FreeInstanceMetadata>? freeInstanceMetadata;

  /// The ID of the instance to create. Valid identifiers are of the form `a-z*[a-z0-9]` and must be between 2 and 64 characters in length.
  final pulumi.Input<String> instanceId;

  /// The `InstanceType` of the current instance.
  final pulumi.Input<InstanceInstanceType>? instanceType;

  /// Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.). * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `a-z{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `[a-z0-9_-]{0,63}`. * No more than 64 labels can be associated with a given resource. See https://goo.gl/xmQnxf for more information on and examples of labels. If you plan to use labels in your own code, please note that additional characters may be allowed in the future. And so you are advised to use an internal label representation, such as JSON, which doesn't rely upon specific characters being disallowed. For example, representing labels as the string: name + "_" + value would prove problematic if we were to allow "_" in a future release.
  final pulumi.Input<Map<String, String>>? labels;

  /// A unique identifier for the instance, which cannot be changed after the instance is created. Values are of the form `projects//instances/a-z*[a-z0-9]`. The final segment of the name must be between 2 and 64 characters in length.
  final pulumi.Input<String>? name;

  /// The number of nodes allocated to this instance. At most one of either node_count or processing_units should be present in the message. Users can set the node_count field to specify the target number of nodes allocated to the instance. This may be zero in API responses for instances that are not yet in state `READY`. See [the documentation](https://cloud.google.com/spanner/docs/compute-capacity) for more information about nodes and processing units.
  final pulumi.Input<int>? nodeCount;

  /// The number of processing units allocated to this instance. At most one of processing_units or node_count should be present in the message. Users can set the processing_units field to specify the target number of processing units allocated to the instance. This may be zero in API responses for instances that are not yet in state `READY`. See [the documentation](https://cloud.google.com/spanner/docs/compute-capacity) for more information about nodes and processing units.
  final pulumi.Input<int>? processingUnits;
  final pulumi.Input<String>? project;

  /// Creates a new [InstanceArgs].
  /// [autoscalingConfig] Optional. The autoscaling configuration. Autoscaling is enabled if this field is set. When autoscaling is enabled, node_count and processing_units are treated as OUTPUT_ONLY fields and reflect the current compute capacity allocated to the instance.
  /// [config] The name of the instance's configuration. Values are of the form `projects//instanceConfigs/`. See also InstanceConfig and ListInstanceConfigs.
  /// [displayName] The descriptive name for this instance as it appears in UIs. Must be unique per project and between 4 and 30 characters in length.
  /// [endpointUris] Deprecated. This field is not populated.
  /// [freeInstanceMetadata] Free instance metadata. Only populated for free instances.
  /// [instanceId] The ID of the instance to create. Valid identifiers are of the form `a-z*[a-z0-9]` and must be between 2 and 64 characters in length.
  /// [instanceType] The `InstanceType` of the current instance.
  /// [labels] Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.). * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `a-z{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `[a-z0-9_-]{0,63}`. * No more than 64 labels can be associated with a given resource. See https://goo.gl/xmQnxf for more information on and examples of labels. If you plan to use labels in your own code, please note that additional characters may be allowed in the future. And so you are advised to use an internal label representation, such as JSON, which doesn't rely upon specific characters being disallowed. For example, representing labels as the string: name + "_" + value would prove problematic if we were to allow "_" in a future release.
  /// [name] A unique identifier for the instance, which cannot be changed after the instance is created. Values are of the form `projects//instances/a-z*[a-z0-9]`. The final segment of the name must be between 2 and 64 characters in length.
  /// [nodeCount] The number of nodes allocated to this instance. At most one of either node_count or processing_units should be present in the message. Users can set the node_count field to specify the target number of nodes allocated to the instance. This may be zero in API responses for instances that are not yet in state `READY`. See [the documentation](https://cloud.google.com/spanner/docs/compute-capacity) for more information about nodes and processing units.
  /// [processingUnits] The number of processing units allocated to this instance. At most one of processing_units or node_count should be present in the message. Users can set the processing_units field to specify the target number of processing units allocated to the instance. This may be zero in API responses for instances that are not yet in state `READY`. See [the documentation](https://cloud.google.com/spanner/docs/compute-capacity) for more information about nodes and processing units.
  /// [project] Optional.
  InstanceArgs({
    AutoscalingConfig? autoscalingConfig,
    required String config,
    required String displayName,
    List<String>? endpointUris,
    FreeInstanceMetadata? freeInstanceMetadata,
    required String instanceId,
    InstanceInstanceType? instanceType,
    Map<String, String>? labels,
    String? name,
    int? nodeCount,
    int? processingUnits,
    String? project,
  })  : autoscalingConfig =
            pulumi.Input.asOptionalInput<AutoscalingConfig>(autoscalingConfig),
        config = pulumi.Input.asInput<String>(config),
        displayName = pulumi.Input.asInput<String>(displayName),
        endpointUris = pulumi.Input.asOptionalInput<List<String>>(endpointUris),
        freeInstanceMetadata =
            pulumi.Input.asOptionalInput<FreeInstanceMetadata>(
                freeInstanceMetadata),
        instanceId = pulumi.Input.asInput<String>(instanceId),
        instanceType =
            pulumi.Input.asOptionalInput<InstanceInstanceType>(instanceType),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        name = pulumi.Input.asOptionalInput<String>(name),
        nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
        processingUnits = pulumi.Input.asOptionalInput<int>(processingUnits),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingConfigValue = autoscalingConfig;
    if (autoscalingConfigValue != null) {
      map['autoscalingConfig'] = pulumi.Input.mapOptionalInputValue<
              AutoscalingConfig, Map<String, dynamic>>(
          autoscalingConfigValue, (value) => value.toMap());
    }
    map['config'] = config;
    map['displayName'] = displayName;
    final endpointUrisValue = endpointUris;
    if (endpointUrisValue != null) {
      map['endpointUris'] = endpointUrisValue;
    }
    final freeInstanceMetadataValue = freeInstanceMetadata;
    if (freeInstanceMetadataValue != null) {
      map['freeInstanceMetadata'] = pulumi.Input.mapOptionalInputValue<
              FreeInstanceMetadata, Map<String, dynamic>>(
          freeInstanceMetadataValue, (value) => value.toMap());
    }
    map['instanceId'] = instanceId;
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] =
          pulumi.Input.mapOptionalInputValue<InstanceInstanceType, String>(
              instanceTypeValue, (value) => value.value);
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nodeCountValue = nodeCount;
    if (nodeCountValue != null) {
      map['nodeCount'] = nodeCountValue;
    }
    final processingUnitsValue = processingUnits;
    if (processingUnitsValue != null) {
      map['processingUnits'] = processingUnitsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      autoscalingConfig: map['autoscalingConfig'] == null
          ? null
          : AutoscalingConfig.fromMap(
              (map['autoscalingConfig'] as Map).cast<String, dynamic>()),
      config: map['config'] as String,
      displayName: map['displayName'] as String,
      endpointUris: map['endpointUris'] == null
          ? null
          : (map['endpointUris'] as List).cast<String>(),
      freeInstanceMetadata: map['freeInstanceMetadata'] == null
          ? null
          : FreeInstanceMetadata.fromMap(
              (map['freeInstanceMetadata'] as Map).cast<String, dynamic>()),
      instanceId: map['instanceId'] as String,
      instanceType: map['instanceType'] == null
          ? null
          : InstanceInstanceType.fromValue(map['instanceType'] as String),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      processingUnits:
          map['processingUnits'] == null ? null : map['processingUnits'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
