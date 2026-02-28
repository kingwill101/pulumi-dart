// ignore_for_file: unused_element, unnecessary_cast

import 'workload_metadata_config_mode_container_v1beta1.dart';
import 'workload_metadata_config_node_metadata.dart';

/// WorkloadMetadataConfig defines the metadata configuration to expose to workloads on the node pool.
class WorkloadMetadataConfigContainerV1beta1 {
  /// Mode is the configuration for how to expose metadata to workloads running on the node pool.
  final WorkloadMetadataConfigModeContainerV1beta1? mode;

  /// NodeMetadata is the configuration for how to expose metadata to the workloads running on the node.
  final WorkloadMetadataConfigNodeMetadata? nodeMetadata;

  /// Creates a new [WorkloadMetadataConfigContainerV1beta1].
  /// [mode] Mode is the configuration for how to expose metadata to workloads running on the node pool.
  /// [nodeMetadata] NodeMetadata is the configuration for how to expose metadata to the workloads running on the node.
  WorkloadMetadataConfigContainerV1beta1({
    this.mode,
    this.nodeMetadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue.value;
    }
    final nodeMetadataValue = nodeMetadata;
    if (nodeMetadataValue != null) {
      map['nodeMetadata'] = nodeMetadataValue.value;
    }
    return map;
  }

  factory WorkloadMetadataConfigContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return WorkloadMetadataConfigContainerV1beta1(
      mode: map['mode'] == null
          ? null
          : WorkloadMetadataConfigModeContainerV1beta1.fromValue(
              map['mode'] as String),
      nodeMetadata: map['nodeMetadata'] == null
          ? null
          : WorkloadMetadataConfigNodeMetadata.fromValue(
              map['nodeMetadata'] as String),
    );
  }
}
