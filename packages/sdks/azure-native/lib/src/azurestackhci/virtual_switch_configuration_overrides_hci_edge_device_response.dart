// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The VirtualSwitchConfigurationOverrides of a cluster.
class VirtualSwitchConfigurationOverridesHciEdgeDeviceResponse {
  /// Enable IoV for Virtual Switch
  final pulumi.Input<String> enableIov;
  /// Load Balancing Algorithm for Virtual Switch
  final pulumi.Input<String> loadBalancingAlgorithm;

  /// Creates a new [VirtualSwitchConfigurationOverridesHciEdgeDeviceResponse].
  /// [enableIov] Enable IoV for Virtual Switch
  /// [loadBalancingAlgorithm] Load Balancing Algorithm for Virtual Switch
  const VirtualSwitchConfigurationOverridesHciEdgeDeviceResponse({
    required this.enableIov,
    required this.loadBalancingAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIov': enableIov,
      'loadBalancingAlgorithm': loadBalancingAlgorithm,
    };
  }

  factory VirtualSwitchConfigurationOverridesHciEdgeDeviceResponse.fromMap(Map<String, dynamic> map) {
    return VirtualSwitchConfigurationOverridesHciEdgeDeviceResponse(
      enableIov: pulumi.Input.fromValue(map['enableIov'] as String),
      loadBalancingAlgorithm: pulumi.Input.fromValue(map['loadBalancingAlgorithm'] as String),
    );
  }
}
