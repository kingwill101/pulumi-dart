// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_ipconfiguration.dart';

/// Network interface properties.
class NetworkInterface {
  /// A list of IP configurations of the network interface.
  final List<NetworkInterfaceIPConfiguration>? ipConfigurations;
  /// The MAC address of the network interface.
  final String? macAddress;
  /// The name of the network interface.
  final String? networkInterfaceName;
  /// The type of the VM switch.
  final String? vmSwitchType;

  /// Creates a new [NetworkInterface].
  /// [ipConfigurations] A list of IP configurations of the network interface.
  /// [macAddress] The MAC address of the network interface.
  /// [networkInterfaceName] The name of the network interface.
  /// [vmSwitchType] The type of the VM switch.
  NetworkInterface({
    this.ipConfigurations,
    this.macAddress,
    this.networkInterfaceName,
    this.vmSwitchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigurations': ?ipConfigurations == null ? null : pulumi.Input.encodeList<NetworkInterfaceIPConfiguration, Map<String, dynamic>>(ipConfigurations!, (value) => value.toMap()),
      'macAddress': ?macAddress,
      'networkInterfaceName': ?networkInterfaceName,
      'vmSwitchType': ?vmSwitchType,
    };
  }

  factory NetworkInterface.fromMap(Map<String, dynamic> map) {
    return NetworkInterface(
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Input.decodeList<NetworkInterfaceIPConfiguration>(map['ipConfigurations'], (value) => NetworkInterfaceIPConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      macAddress: map['macAddress'] == null ? null : map['macAddress'] as String,
      networkInterfaceName: map['networkInterfaceName'] == null ? null : map['networkInterfaceName'] as String,
      vmSwitchType: map['vmSwitchType'] == null ? null : map['vmSwitchType'] as String,
    );
  }
}

