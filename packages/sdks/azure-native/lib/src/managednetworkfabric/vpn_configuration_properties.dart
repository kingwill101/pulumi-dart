// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fabric_option_bproperties.dart';
import 'vpn_configuration_properties_option_aproperties.dart';

/// Network and credential configuration currently applied on terminal server.
class VpnConfigurationProperties {
  /// ARM Resource ID of the Network To Network Interconnect.
  final pulumi.Input<String>? networkToNetworkInterconnectId;

  /// option A properties
  final pulumi.Input<VpnConfigurationPropertiesOptionAProperties>?
  optionAProperties;

  /// option B properties
  final pulumi.Input<FabricOptionBProperties>? optionBProperties;

  /// Peering option list.
  final pulumi.Input<String> peeringOption;

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
      'optionAProperties':
          ?pulumi.Input.mapOptionalInputValue<
            VpnConfigurationPropertiesOptionAProperties,
            Map<String, dynamic>
          >(optionAProperties, (value) => value.toMap()),
      'optionBProperties':
          ?pulumi.Input.mapOptionalInputValue<
            FabricOptionBProperties,
            Map<String, dynamic>
          >(optionBProperties, (value) => value.toMap()),
      'peeringOption': peeringOption,
    };
  }

  factory VpnConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return VpnConfigurationProperties(
      networkToNetworkInterconnectId: (() {
        final guardedValue = map['networkToNetworkInterconnectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      optionAProperties: (() {
        final guardedValue = map['optionAProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VpnConfigurationPropertiesOptionAProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      optionBProperties: (() {
        final guardedValue = map['optionBProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FabricOptionBProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      peeringOption: pulumi.Input.fromValue(map['peeringOption'] as String),
    );
  }
}
