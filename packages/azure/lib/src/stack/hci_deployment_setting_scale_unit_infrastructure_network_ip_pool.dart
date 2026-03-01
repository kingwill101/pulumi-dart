// ignore_for_file: unused_element, unnecessary_cast


class HciDeploymentSettingScaleUnitInfrastructureNetworkIpPool {
  /// Specifies starting IP address for the management network. A minimum of six free, contiguous IPv4 addresses (excluding your host IPs) are needed for infrastructure services such as clustering. Changing this forces a new Stack HCI Deployment Setting to be created.
  final String endingAddress;
  /// Specifies ending IP address for the management network. A minimum of six free, contiguous IPv4 addresses (excluding your host IPs) are needed for infrastructure services such as clustering. Changing this forces a new Stack HCI Deployment Setting to be created.
  final String startingAddress;

  /// Creates a new [HciDeploymentSettingScaleUnitInfrastructureNetworkIpPool].
  /// [endingAddress] Specifies starting IP address for the management network. A minimum of six free, contiguous IPv4 addresses (excluding your host IPs) are needed for infrastructure services such as clustering. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [startingAddress] Specifies ending IP address for the management network. A minimum of six free, contiguous IPv4 addresses (excluding your host IPs) are needed for infrastructure services such as clustering. Changing this forces a new Stack HCI Deployment Setting to be created.
  HciDeploymentSettingScaleUnitInfrastructureNetworkIpPool({
    required this.endingAddress,
    required this.startingAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endingAddress': endingAddress,
      'startingAddress': startingAddress,
    };
  }

  factory HciDeploymentSettingScaleUnitInfrastructureNetworkIpPool.fromMap(Map<String, dynamic> map) {
    return HciDeploymentSettingScaleUnitInfrastructureNetworkIpPool(
      endingAddress: map['endingAddress'] as String,
      startingAddress: map['startingAddress'] as String,
    );
  }
}

