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
  final pulumi.Input<VpnConfigurationPropertiesResponseOptionAProperties>? optionAProperties;
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
      'optionAProperties': ?pulumi.Input.mapOptionalInputValue<VpnConfigurationPropertiesResponseOptionAProperties, Map<String, dynamic>>(optionAProperties, (value) => value.toMap()),
      'optionBProperties': ?pulumi.Input.mapOptionalInputValue<FabricOptionBPropertiesResponse, Map<String, dynamic>>(optionBProperties, (value) => value.toMap()),
      'peeringOption': peeringOption,
    };
  }

  factory VpnConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VpnConfigurationPropertiesResponse(
      administrativeState: (map['administrativeState'] as String).input(),
      networkToNetworkInterconnectId: map['networkToNetworkInterconnectId'] == null ? null : (map['networkToNetworkInterconnectId']! as String).input(),
      optionAProperties: map['optionAProperties'] == null ? null : (VpnConfigurationPropertiesResponseOptionAProperties.fromMap((map['optionAProperties']! as Map).cast<String, dynamic>())).input(),
      optionBProperties: map['optionBProperties'] == null ? null : (FabricOptionBPropertiesResponse.fromMap((map['optionBProperties']! as Map).cast<String, dynamic>())).input(),
      peeringOption: (map['peeringOption'] as String).input(),
    );
  }
}

