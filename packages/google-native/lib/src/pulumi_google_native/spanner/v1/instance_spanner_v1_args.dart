// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_config_spanner_v1.dart';
import 'free_instance_metadata.dart';
import 'instance_instance_type_spanner_v1.dart';

/// The set of arguments for Instance.
class InstanceSpannerV1Args {
  /// Optional. The autoscaling configuration. Autoscaling is enabled if this field is set. When autoscaling is enabled, node_count and processing_units are treated as OUTPUT_ONLY fields and reflect the current compute capacity allocated to the instance.
  final pulumi.Input<AutoscalingConfigSpannerV1>? autoscalingConfig;

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
  final pulumi.Input<InstanceInstanceTypeSpannerV1>? instanceType;

  /// Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.). * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `a-z{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `[a-z0-9_-]{0,63}`. * No more than 64 labels can be associated with a given resource. See https://goo.gl/xmQnxf for more information on and examples of labels. If you plan to use labels in your own code, please note that additional characters may be allowed in the future. And so you are advised to use an internal label representation, such as JSON, which doesn't rely upon specific characters being disallowed. For example, representing labels as the string: name + "_" + value would prove problematic if we were to allow "_" in a future release.
  final pulumi.Input<Map<String, String>>? labels;

  /// A unique identifier for the instance, which cannot be changed after the instance is created. Values are of the form `projects//instances/a-z*[a-z0-9]`. The final segment of the name must be between 2 and 64 characters in length.
  final pulumi.Input<String>? name;

  /// The number of nodes allocated to this instance. At most one of either node_count or processing_units should be present in the message. Users can set the node_count field to specify the target number of nodes allocated to the instance. This may be zero in API responses for instances that are not yet in state `READY`. See [the documentation](https://cloud.google.com/spanner/docs/compute-capacity) for more information about nodes and processing units.
  final pulumi.Input<int>? nodeCount;

  /// The number of processing units allocated to this instance. At most one of processing_units or node_count should be present in the message. Users can set the processing_units field to specify the target number of processing units allocated to the instance. This may be zero in API responses for instances that are not yet in state `READY`. See [the documentation](https://cloud.google.com/spanner/docs/compute-capacity) for more information about nodes and processing units.
  final pulumi.Input<int>? processingUnits;
  final pulumi.Input<String>? project;

  InstanceSpannerV1Args({
    this.autoscalingConfig,
    required this.config,
    required this.displayName,
    this.endpointUris,
    this.freeInstanceMetadata,
    required this.instanceId,
    this.instanceType,
    this.labels,
    this.name,
    this.nodeCount,
    this.processingUnits,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingConfigValue = autoscalingConfig;
    if (autoscalingConfigValue != null) {
      map['autoscalingConfig'] = pulumi.Input.mapOptionalInputValue<
              AutoscalingConfigSpannerV1, Map<String, dynamic>>(
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
      map['instanceType'] = pulumi.Input.mapOptionalInputValue<
          InstanceInstanceTypeSpannerV1,
          String>(instanceTypeValue, (value) => value.value);
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

  factory InstanceSpannerV1Args.fromMap(Map<String, dynamic> map) {
    return InstanceSpannerV1Args(
      autoscalingConfig:
          pulumi.Input.asOptionalInput<AutoscalingConfigSpannerV1>(
              map['autoscalingConfig']),
      config: pulumi.Input.asInput<String>(map['config']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      endpointUris:
          pulumi.Input.asOptionalInput<List<String>>(map['endpointUris']),
      freeInstanceMetadata: pulumi.Input.asOptionalInput<FreeInstanceMetadata>(
          map['freeInstanceMetadata']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      instanceType: pulumi.Input.asOptionalInput<InstanceInstanceTypeSpannerV1>(
          map['instanceType']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      nodeCount: pulumi.Input.asOptionalInput<int>(map['nodeCount']),
      processingUnits:
          pulumi.Input.asOptionalInput<int>(map['processingUnits']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
