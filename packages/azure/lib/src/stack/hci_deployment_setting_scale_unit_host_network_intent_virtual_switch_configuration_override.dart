// ignore_for_file: unused_element, unnecessary_cast


class HciDeploymentSettingScaleUnitHostNetworkIntentVirtualSwitchConfigurationOverride {
  /// Specifies the IoV enable status for Virtual Switch. Changing this forces a new Stack HCI Deployment Setting to be created.
  final String? enableIov;
  /// Specifies the load balancing algorithm for Virtual Switch. Changing this forces a new Stack HCI Deployment Setting to be created.
  final String? loadBalancingAlgorithm;

  /// Creates a new [HciDeploymentSettingScaleUnitHostNetworkIntentVirtualSwitchConfigurationOverride].
  /// [enableIov] Specifies the IoV enable status for Virtual Switch. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [loadBalancingAlgorithm] Specifies the load balancing algorithm for Virtual Switch. Changing this forces a new Stack HCI Deployment Setting to be created.
  HciDeploymentSettingScaleUnitHostNetworkIntentVirtualSwitchConfigurationOverride({
    this.enableIov,
    this.loadBalancingAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIov': ?enableIov,
      'loadBalancingAlgorithm': ?loadBalancingAlgorithm,
    };
  }

  factory HciDeploymentSettingScaleUnitHostNetworkIntentVirtualSwitchConfigurationOverride.fromMap(Map<String, dynamic> map) {
    return HciDeploymentSettingScaleUnitHostNetworkIntentVirtualSwitchConfigurationOverride(
      enableIov: map['enableIov'] == null ? null : map['enableIov'] as String,
      loadBalancingAlgorithm: map['loadBalancingAlgorithm'] == null ? null : map['loadBalancingAlgorithm'] as String,
    );
  }
}

