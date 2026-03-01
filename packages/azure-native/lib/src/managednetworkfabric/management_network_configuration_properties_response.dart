// ignore_for_file: unused_element, unnecessary_cast

import 'vpn_configuration_properties_response.dart';

/// Configuration to be used to setup the management network.
class ManagementNetworkConfigurationPropertiesResponse {
  /// VPN Configuration properties.
  final VpnConfigurationPropertiesResponse infrastructureVpnConfiguration;
  /// VPN Configuration properties.
  final VpnConfigurationPropertiesResponse workloadVpnConfiguration;

  /// Creates a new [ManagementNetworkConfigurationPropertiesResponse].
  /// [infrastructureVpnConfiguration] VPN Configuration properties.
  /// [workloadVpnConfiguration] VPN Configuration properties.
  ManagementNetworkConfigurationPropertiesResponse({
    required this.infrastructureVpnConfiguration,
    required this.workloadVpnConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureVpnConfiguration': infrastructureVpnConfiguration.toMap(),
      'workloadVpnConfiguration': workloadVpnConfiguration.toMap(),
    };
  }

  factory ManagementNetworkConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagementNetworkConfigurationPropertiesResponse(
      infrastructureVpnConfiguration: VpnConfigurationPropertiesResponse.fromMap((map['infrastructureVpnConfiguration'] as Map).cast<String, dynamic>()),
      workloadVpnConfiguration: VpnConfigurationPropertiesResponse.fromMap((map['workloadVpnConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

