// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_node_pool_config.dart';

/// Specifies the control plane node pool configuration.
class BareMetalControlPlaneNodePoolConfig {
  /// The generic configuration for a node pool running the control plane.
  final BareMetalNodePoolConfig nodePoolConfig;

  /// Creates a new [BareMetalControlPlaneNodePoolConfig].
  /// [nodePoolConfig] The generic configuration for a node pool running the control plane.
  BareMetalControlPlaneNodePoolConfig({required this.nodePoolConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nodePoolConfig': nodePoolConfig.toMap()};
  }

  factory BareMetalControlPlaneNodePoolConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalControlPlaneNodePoolConfig(
      nodePoolConfig: BareMetalNodePoolConfig.fromMap(
        (map['nodePoolConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
