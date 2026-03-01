// ignore_for_file: unused_element, unnecessary_cast

import 'fabric_option_bproperties.dart';
import 'vpn_configuration_properties_option_aproperties.dart';

/// Network and credential configuration currently applied on terminal server.
class VpnConfigurationProperties {
  /// ARM Resource ID of the Network To Network Interconnect.
  final String? networkToNetworkInterconnectId;
  /// option A properties
  final VpnConfigurationPropertiesOptionAProperties? optionAProperties;
  /// option B properties
  final FabricOptionBProperties? optionBProperties;
  /// Peering option list.
  final String peeringOption;

  /// Creates a new [VpnConfigurationProperties].
  /// [networkToNetworkInterconnectId] ARM Resource ID of the Network To Network Interconnect.
  /// [optionAProperties] option A properties
  /// [optionBProperties] option B properties
  /// [peeringOption] Peering option list.
  VpnConfigurationProperties({
    this.networkToNetworkInterconnectId,
    this.optionAProperties,
    this.optionBProperties,
    required this.peeringOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkToNetworkInterconnectId': ?networkToNetworkInterconnectId,
      'optionAProperties': ?optionAProperties == null ? null : optionAProperties!.toMap(),
      'optionBProperties': ?optionBProperties == null ? null : optionBProperties!.toMap(),
      'peeringOption': peeringOption,
    };
  }

  factory VpnConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return VpnConfigurationProperties(
      networkToNetworkInterconnectId: map['networkToNetworkInterconnectId'] == null ? null : map['networkToNetworkInterconnectId'] as String,
      optionAProperties: map['optionAProperties'] == null ? null : VpnConfigurationPropertiesOptionAProperties.fromMap((map['optionAProperties'] as Map).cast<String, dynamic>()),
      optionBProperties: map['optionBProperties'] == null ? null : FabricOptionBProperties.fromMap((map['optionBProperties'] as Map).cast<String, dynamic>()),
      peeringOption: map['peeringOption'] as String,
    );
  }
}

