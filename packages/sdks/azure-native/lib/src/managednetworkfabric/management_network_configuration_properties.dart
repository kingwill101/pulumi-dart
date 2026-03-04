// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_configuration_properties.dart';

/// Configuration to be used to setup the management network.
class ManagementNetworkConfigurationProperties {
  /// VPN Configuration properties.
  final pulumi.Input<VpnConfigurationProperties> infrastructureVpnConfiguration;

  /// VPN Configuration properties.
  final pulumi.Input<VpnConfigurationProperties> workloadVpnConfiguration;

  /// Creates a new [ManagementNetworkConfigurationProperties].
  /// [infrastructureVpnConfiguration] VPN Configuration properties.
  /// [workloadVpnConfiguration] VPN Configuration properties.
  ManagementNetworkConfigurationProperties({
    required this.infrastructureVpnConfiguration,
    required this.workloadVpnConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureVpnConfiguration':
          pulumi.Input.mapInputValue<
            VpnConfigurationProperties,
            Map<String, dynamic>
          >(infrastructureVpnConfiguration, (value) => value.toMap()),
      'workloadVpnConfiguration':
          pulumi.Input.mapInputValue<
            VpnConfigurationProperties,
            Map<String, dynamic>
          >(workloadVpnConfiguration, (value) => value.toMap()),
    };
  }

  factory ManagementNetworkConfigurationProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagementNetworkConfigurationProperties(
      infrastructureVpnConfiguration: pulumi.Input.fromValue(
        VpnConfigurationProperties.fromMap(
          (map['infrastructureVpnConfiguration']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      workloadVpnConfiguration: pulumi.Input.fromValue(
        VpnConfigurationProperties.fromMap(
          (map['workloadVpnConfiguration']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
