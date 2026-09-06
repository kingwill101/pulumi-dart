// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The VirtualSwitchConfigurationOverrides of a cluster.
class VirtualSwitchConfigurationOverrides {
  /// Enable IoV for Virtual Switch
  final pulumi.Input<String?>? enableIov;
  /// Load Balancing Algorithm for Virtual Switch
  final pulumi.Input<String?>? loadBalancingAlgorithm;

  /// Creates a new [VirtualSwitchConfigurationOverrides].
  /// [enableIov] Enable IoV for Virtual Switch
  /// [loadBalancingAlgorithm] Load Balancing Algorithm for Virtual Switch
  const VirtualSwitchConfigurationOverrides({
    this.enableIov,
    this.loadBalancingAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIov': ?enableIov,
      'loadBalancingAlgorithm': ?loadBalancingAlgorithm,
    };
  }

  factory VirtualSwitchConfigurationOverrides.fromMap(Map<String, dynamic> map) {
    return VirtualSwitchConfigurationOverrides(
      enableIov: (() { final guardedValue = map['enableIov']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancingAlgorithm: (() { final guardedValue = map['loadBalancingAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
