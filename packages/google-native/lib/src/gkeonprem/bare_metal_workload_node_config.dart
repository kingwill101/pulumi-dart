// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_workload_node_config_container_runtime.dart';

/// Specifies the workload node configurations.
class BareMetalWorkloadNodeConfig {
  /// Specifies which container runtime will be used.
  final BareMetalWorkloadNodeConfigContainerRuntime? containerRuntime;

  /// The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter.
  final String? maxPodsPerNode;

  /// Creates a new [BareMetalWorkloadNodeConfig].
  /// [containerRuntime] Specifies which container runtime will be used.
  /// [maxPodsPerNode] The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter.
  BareMetalWorkloadNodeConfig({
    this.containerRuntime,
    this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerRuntimeValue = containerRuntime;
    if (containerRuntimeValue != null) {
      map['containerRuntime'] = containerRuntimeValue.value;
    }
    final maxPodsPerNodeValue = maxPodsPerNode;
    if (maxPodsPerNodeValue != null) {
      map['maxPodsPerNode'] = maxPodsPerNodeValue;
    }
    return map;
  }

  factory BareMetalWorkloadNodeConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalWorkloadNodeConfig(
      containerRuntime: map['containerRuntime'] == null
          ? null
          : BareMetalWorkloadNodeConfigContainerRuntime.fromValue(
              map['containerRuntime'] as String),
      maxPodsPerNode: map['maxPodsPerNode'] == null
          ? null
          : map['maxPodsPerNode'] as String,
    );
  }
}
