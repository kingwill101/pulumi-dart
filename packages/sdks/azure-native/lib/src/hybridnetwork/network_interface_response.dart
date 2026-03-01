// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_ipconfiguration_response.dart';

/// Network interface properties.
class NetworkInterfaceResponse {
  /// A list of IP configurations of the network interface.
  final List<NetworkInterfaceIPConfigurationResponse>? ipConfigurations;
  /// The MAC address of the network interface.
  final String? macAddress;
  /// The name of the network interface.
  final String? networkInterfaceName;
  /// The type of the VM switch.
  final String? vmSwitchType;

  /// Creates a new [NetworkInterfaceResponse].
  /// [ipConfigurations] A list of IP configurations of the network interface.
  /// [macAddress] The MAC address of the network interface.
  /// [networkInterfaceName] The name of the network interface.
  /// [vmSwitchType] The type of the VM switch.
  NetworkInterfaceResponse({
    this.ipConfigurations,
    this.macAddress,
    this.networkInterfaceName,
    this.vmSwitchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigurations': ?ipConfigurations == null ? null : pulumi.Input.encodeList<NetworkInterfaceIPConfigurationResponse, Map<String, dynamic>>(ipConfigurations!, (value) => value.toMap()),
      'macAddress': ?macAddress,
      'networkInterfaceName': ?networkInterfaceName,
      'vmSwitchType': ?vmSwitchType,
    };
  }

  factory NetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceResponse(
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Input.decodeList<NetworkInterfaceIPConfigurationResponse>(map['ipConfigurations'], (value) => NetworkInterfaceIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      macAddress: map['macAddress'] == null ? null : map['macAddress'] as String,
      networkInterfaceName: map['networkInterfaceName'] == null ? null : map['networkInterfaceName'] as String,
      vmSwitchType: map['vmSwitchType'] == null ? null : map['vmSwitchType'] as String,
    );
  }
}

