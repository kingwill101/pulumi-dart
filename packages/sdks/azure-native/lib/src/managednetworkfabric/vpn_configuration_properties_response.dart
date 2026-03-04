// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fabric_option_bproperties_response.dart';
import 'vpn_configuration_properties_response_option_aproperties.dart';

/// Network and credential configuration currently applied on terminal server.
class VpnConfigurationPropertiesResponse {
  /// Administrative state of the resource.
  final pulumi.Input<String> administrativeState;

  /// ARM Resource ID of the Network To Network Interconnect.
  final pulumi.Input<String>? networkToNetworkInterconnectId;

  /// option A properties
  final pulumi.Input<VpnConfigurationPropertiesResponseOptionAProperties>?
  optionAProperties;

  /// option B properties
  final pulumi.Input<FabricOptionBPropertiesResponse>? optionBProperties;

  /// Peering option list.
  final pulumi.Input<String> peeringOption;

  /// Creates a new [VpnConfigurationPropertiesResponse].
  /// [administrativeState] Administrative state of the resource.
  /// [networkToNetworkInterconnectId] ARM Resource ID of the Network To Network Interconnect.
  /// [optionAProperties] option A properties
  /// [optionBProperties] option B properties
  /// [peeringOption] Peering option list.
  VpnConfigurationPropertiesResponse({
    required this.administrativeState,
    this.networkToNetworkInterconnectId,
    this.optionAProperties,
    this.optionBProperties,
    required this.peeringOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': administrativeState,
      'networkToNetworkInterconnectId': ?networkToNetworkInterconnectId,
      'optionAProperties':
          ?pulumi.Input.mapOptionalInputValue<
            VpnConfigurationPropertiesResponseOptionAProperties,
            Map<String, dynamic>
          >(optionAProperties, (value) => value.toMap()),
      'optionBProperties':
          ?pulumi.Input.mapOptionalInputValue<
            FabricOptionBPropertiesResponse,
            Map<String, dynamic>
          >(optionBProperties, (value) => value.toMap()),
      'peeringOption': peeringOption,
    };
  }

  factory VpnConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VpnConfigurationPropertiesResponse(
      administrativeState: pulumi.Input.fromValue(
        map['administrativeState'] as String,
      ),
      networkToNetworkInterconnectId: (() {
        final guardedValue = map['networkToNetworkInterconnectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      optionAProperties: (() {
        final guardedValue = map['optionAProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VpnConfigurationPropertiesResponseOptionAProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      optionBProperties: (() {
        final guardedValue = map['optionBProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FabricOptionBPropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      peeringOption: pulumi.Input.fromValue(map['peeringOption'] as String),
    );
  }
}
