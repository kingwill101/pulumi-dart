// ignore_for_file: unused_element, unnecessary_cast

import 'vpn_configuration_properties.dart';

/// Configuration to be used to setup the management network.
class ManagementNetworkConfigurationProperties {
  /// VPN Configuration properties.
  final VpnConfigurationProperties infrastructureVpnConfiguration;
  /// VPN Configuration properties.
  final VpnConfigurationProperties workloadVpnConfiguration;

  /// Creates a new [ManagementNetworkConfigurationProperties].
  /// [infrastructureVpnConfiguration] VPN Configuration properties.
  /// [workloadVpnConfiguration] VPN Configuration properties.
  ManagementNetworkConfigurationProperties({
    required this.infrastructureVpnConfiguration,
    required this.workloadVpnConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureVpnConfiguration': infrastructureVpnConfiguration.toMap(),
      'workloadVpnConfiguration': workloadVpnConfiguration.toMap(),
    };
  }

  factory ManagementNetworkConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return ManagementNetworkConfigurationProperties(
      infrastructureVpnConfiguration: VpnConfigurationProperties.fromMap((map['infrastructureVpnConfiguration'] as Map).cast<String, dynamic>()),
      workloadVpnConfiguration: VpnConfigurationProperties.fromMap((map['workloadVpnConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

