// ignore_for_file: unused_element, unnecessary_cast


/// The VirtualSwitchConfigurationOverrides of a cluster.
class VirtualSwitchConfigurationOverridesResponse {
  /// Enable IoV for Virtual Switch
  final String enableIov;
  /// Load Balancing Algorithm for Virtual Switch
  final String loadBalancingAlgorithm;

  /// Creates a new [VirtualSwitchConfigurationOverridesResponse].
  /// [enableIov] Enable IoV for Virtual Switch
  /// [loadBalancingAlgorithm] Load Balancing Algorithm for Virtual Switch
  VirtualSwitchConfigurationOverridesResponse({
    required this.enableIov,
    required this.loadBalancingAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIov': enableIov,
      'loadBalancingAlgorithm': loadBalancingAlgorithm,
    };
  }

  factory VirtualSwitchConfigurationOverridesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualSwitchConfigurationOverridesResponse(
      enableIov: map['enableIov'] as String,
      loadBalancingAlgorithm: map['loadBalancingAlgorithm'] as String,
    );
  }
}

