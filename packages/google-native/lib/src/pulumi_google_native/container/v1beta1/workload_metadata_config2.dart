// ignore_for_file: unused_element, unnecessary_cast

import 'workload_metadata_config_mode2.dart';
import 'workload_metadata_config_node_metadata.dart';

/// WorkloadMetadataConfig defines the metadata configuration to expose to workloads on the node pool.
class WorkloadMetadataConfig2 {
  /// Mode is the configuration for how to expose metadata to workloads running on the node pool.
  final WorkloadMetadataConfigMode2? mode;

  /// NodeMetadata is the configuration for how to expose metadata to the workloads running on the node.
  final WorkloadMetadataConfigNodeMetadata? nodeMetadata;

  WorkloadMetadataConfig2({
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

  factory WorkloadMetadataConfig2.fromMap(Map<String, dynamic> map) {
    return WorkloadMetadataConfig2(
      mode: map['mode'] == null
          ? null
          : WorkloadMetadataConfigMode2.fromValue(map['mode'] as String),
      nodeMetadata: map['nodeMetadata'] == null
          ? null
          : WorkloadMetadataConfigNodeMetadata.fromValue(
              map['nodeMetadata'] as String),
    );
  }
}
