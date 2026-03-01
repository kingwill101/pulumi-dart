// ignore_for_file: unused_element, unnecessary_cast

import 'fabric_option_bproperties_response.dart';
import 'vpn_configuration_properties_response_option_aproperties.dart';

/// Network and credential configuration currently applied on terminal server.
class VpnConfigurationPropertiesResponse {
  /// Administrative state of the resource.
  final String administrativeState;
  /// ARM Resource ID of the Network To Network Interconnect.
  final String? networkToNetworkInterconnectId;
  /// option A properties
  final VpnConfigurationPropertiesResponseOptionAProperties? optionAProperties;
  /// option B properties
  final FabricOptionBPropertiesResponse? optionBProperties;
  /// Peering option list.
  final String peeringOption;

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
      'optionAProperties': ?optionAProperties == null ? null : optionAProperties!.toMap(),
      'optionBProperties': ?optionBProperties == null ? null : optionBProperties!.toMap(),
      'peeringOption': peeringOption,
    };
  }

  factory VpnConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VpnConfigurationPropertiesResponse(
      administrativeState: map['administrativeState'] as String,
      networkToNetworkInterconnectId: map['networkToNetworkInterconnectId'] == null ? null : map['networkToNetworkInterconnectId'] as String,
      optionAProperties: map['optionAProperties'] == null ? null : VpnConfigurationPropertiesResponseOptionAProperties.fromMap((map['optionAProperties'] as Map).cast<String, dynamic>()),
      optionBProperties: map['optionBProperties'] == null ? null : FabricOptionBPropertiesResponse.fromMap((map['optionBProperties'] as Map).cast<String, dynamic>()),
      peeringOption: map['peeringOption'] as String,
    );
  }
}

