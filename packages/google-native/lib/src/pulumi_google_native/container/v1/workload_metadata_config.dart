// ignore_for_file: unused_element, unnecessary_cast

import 'workload_metadata_config_mode.dart';

/// WorkloadMetadataConfig defines the metadata configuration to expose to workloads on the node pool.
class WorkloadMetadataConfig {
  /// Mode is the configuration for how to expose metadata to workloads running on the node pool.
  final WorkloadMetadataConfigMode? mode;

  WorkloadMetadataConfig({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue.value;
    }
    return map;
  }

  factory WorkloadMetadataConfig.fromMap(Map<String, dynamic> map) {
    return WorkloadMetadataConfig(
      mode: map['mode'] == null
          ? null
          : WorkloadMetadataConfigMode.fromValue(map['mode'] as String),
    );
  }
}
