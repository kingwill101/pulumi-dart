// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_configuration_properties_response.dart';

/// Configuration to be used to setup the management network.
class ManagementNetworkConfigurationPropertiesResponse {
  /// VPN Configuration properties.
  final pulumi.Input<VpnConfigurationPropertiesResponse>
  infrastructureVpnConfiguration;

  /// VPN Configuration properties.
  final pulumi.Input<VpnConfigurationPropertiesResponse>
  workloadVpnConfiguration;

  /// Creates a new [ManagementNetworkConfigurationPropertiesResponse].
  /// [infrastructureVpnConfiguration] VPN Configuration properties.
  /// [workloadVpnConfiguration] VPN Configuration properties.
  ManagementNetworkConfigurationPropertiesResponse({
    required this.infrastructureVpnConfiguration,
    required this.workloadVpnConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureVpnConfiguration':
          pulumi.Input.mapInputValue<
            VpnConfigurationPropertiesResponse,
            Map<String, dynamic>
          >(infrastructureVpnConfiguration, (value) => value.toMap()),
      'workloadVpnConfiguration':
          pulumi.Input.mapInputValue<
            VpnConfigurationPropertiesResponse,
            Map<String, dynamic>
          >(workloadVpnConfiguration, (value) => value.toMap()),
    };
  }

  factory ManagementNetworkConfigurationPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagementNetworkConfigurationPropertiesResponse(
      infrastructureVpnConfiguration: pulumi.Input.fromValue(
        VpnConfigurationPropertiesResponse.fromMap(
          (map['infrastructureVpnConfiguration']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      workloadVpnConfiguration: pulumi.Input.fromValue(
        VpnConfigurationPropertiesResponse.fromMap(
          (map['workloadVpnConfiguration']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
