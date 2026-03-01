// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_configuration.dart';
import 'sub_resource.dart';

/// Specifies the settings for a network interface to attach to the node type.
class AdditionalNetworkInterfaceConfiguration {
  /// Specifies the DSCP configuration to apply to the network interface.
  final SubResource? dscpConfiguration;
  /// Specifies whether the network interface is accelerated networking-enabled.
  final bool? enableAcceleratedNetworking;
  /// Specifies the IP configurations of the network interface.
  final List<IpConfiguration> ipConfigurations;
  /// Name of the network interface.
  final String name;

  /// Creates a new [AdditionalNetworkInterfaceConfiguration].
  /// [dscpConfiguration] Specifies the DSCP configuration to apply to the network interface.
  /// [enableAcceleratedNetworking] Specifies whether the network interface is accelerated networking-enabled.
  /// [ipConfigurations] Specifies the IP configurations of the network interface.
  /// [name] Name of the network interface.
  AdditionalNetworkInterfaceConfiguration({
    this.dscpConfiguration,
    this.enableAcceleratedNetworking,
    required this.ipConfigurations,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dscpConfiguration': ?dscpConfiguration == null ? null : dscpConfiguration!.toMap(),
      'enableAcceleratedNetworking': ?enableAcceleratedNetworking,
      'ipConfigurations': pulumi.Input.encodeList<IpConfiguration, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'name': name,
    };
  }

  factory AdditionalNetworkInterfaceConfiguration.fromMap(Map<String, dynamic> map) {
    return AdditionalNetworkInterfaceConfiguration(
      dscpConfiguration: map['dscpConfiguration'] == null ? null : SubResource.fromMap((map['dscpConfiguration'] as Map).cast<String, dynamic>()),
      enableAcceleratedNetworking: map['enableAcceleratedNetworking'] == null ? null : map['enableAcceleratedNetworking'] as bool,
      ipConfigurations: pulumi.Input.decodeList<IpConfiguration>(map['ipConfigurations'], (value) => IpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

