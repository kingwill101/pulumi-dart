// ignore_for_file: unused_element, unnecessary_cast


/// The VirtualSwitchConfigurationOverrides of a cluster.
class VirtualSwitchConfigurationOverrides {
  /// Enable IoV for Virtual Switch
  final String? enableIov;
  /// Load Balancing Algorithm for Virtual Switch
  final String? loadBalancingAlgorithm;

  /// Creates a new [VirtualSwitchConfigurationOverrides].
  /// [enableIov] Enable IoV for Virtual Switch
  /// [loadBalancingAlgorithm] Load Balancing Algorithm for Virtual Switch
  VirtualSwitchConfigurationOverrides({
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
      enableIov: map['enableIov'] == null ? null : map['enableIov'] as String,
      loadBalancingAlgorithm: map['loadBalancingAlgorithm'] == null ? null : map['loadBalancingAlgorithm'] as String,
    );
  }
}

