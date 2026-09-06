// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The VirtualSwitchConfigurationOverrides of a cluster.
class VirtualSwitchConfigurationOverridesResponse {
  /// Enable IoV for Virtual Switch
  final pulumi.Input<String?>? enableIov;
  /// Load Balancing Algorithm for Virtual Switch
  final pulumi.Input<String?>? loadBalancingAlgorithm;

  /// Creates a new [VirtualSwitchConfigurationOverridesResponse].
  /// [enableIov] Enable IoV for Virtual Switch
  /// [loadBalancingAlgorithm] Load Balancing Algorithm for Virtual Switch
  const VirtualSwitchConfigurationOverridesResponse({
    this.enableIov,
    this.loadBalancingAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIov': ?enableIov,
      'loadBalancingAlgorithm': ?loadBalancingAlgorithm,
    };
  }

  factory VirtualSwitchConfigurationOverridesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualSwitchConfigurationOverridesResponse(
      enableIov: (() { final guardedValue = map['enableIov']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancingAlgorithm: (() { final guardedValue = map['loadBalancingAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
