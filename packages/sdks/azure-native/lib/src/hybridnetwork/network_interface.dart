// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_ipconfiguration.dart';

/// Network interface properties.
class NetworkInterface {
  /// A list of IP configurations of the network interface.
  final pulumi.Input<List<NetworkInterfaceIPConfiguration>?>? ipConfigurations;
  /// The MAC address of the network interface.
  final pulumi.Input<String?>? macAddress;
  /// The name of the network interface.
  final pulumi.Input<String?>? networkInterfaceName;
  /// The type of the VM switch.
  final pulumi.Input<dynamic>? vmSwitchType;

  /// Creates a new [NetworkInterface].
  /// [ipConfigurations] A list of IP configurations of the network interface.
  /// [macAddress] The MAC address of the network interface.
  /// [networkInterfaceName] The name of the network interface.
  /// [vmSwitchType] The type of the VM switch.
  const NetworkInterface({
    this.ipConfigurations,
    this.macAddress,
    this.networkInterfaceName,
    this.vmSwitchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceIPConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<NetworkInterfaceIPConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'macAddress': ?macAddress,
      'networkInterfaceName': ?networkInterfaceName,
      'vmSwitchType': ?vmSwitchType,
    };
  }

  factory NetworkInterface.fromMap(Map<String, dynamic> map) {
    return NetworkInterface(
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceIPConfiguration>(guardedValue, (value) => NetworkInterfaceIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceName: (() { final guardedValue = map['networkInterfaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmSwitchType: (() { final guardedValue = map['vmSwitchType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
