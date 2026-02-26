// ignore_for_file: unused_element, unnecessary_cast

import '../v2_queued_resource_tpu_node_spec_node_network_config/v2_queued_resource_tpu_node_spec_node_network_config.dart';

class V2QueuedResourceTpuNodeSpecNode {
  /// TPU accelerator type for the TPU. If not specified, this defaults to 'v2-8'.
  final String? acceleratorType;

  /// Text description of the TPU.
  final String? description;

  /// Network configurations for the TPU node.
  /// Structure is documented below.
  final V2QueuedResourceTpuNodeSpecNodeNetworkConfig? networkConfig;

  /// Runtime version for the TPU.
  final String runtimeVersion;

  V2QueuedResourceTpuNodeSpecNode({
    this.acceleratorType,
    this.description,
    this.networkConfig,
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorTypeValue = acceleratorType;
    if (acceleratorTypeValue != null) {
      map['acceleratorType'] = acceleratorTypeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = networkConfigValue.toMap();
    }
    map['runtimeVersion'] = runtimeVersion;
    return map;
  }

  factory V2QueuedResourceTpuNodeSpecNode.fromMap(Map<String, dynamic> map) {
    return V2QueuedResourceTpuNodeSpecNode(
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      networkConfig: map['networkConfig'] == null
          ? null
          : V2QueuedResourceTpuNodeSpecNodeNetworkConfig.fromMap(
              (map['networkConfig'] as Map).cast<String, dynamic>()),
      runtimeVersion: map['runtimeVersion'] as String,
    );
  }
}
