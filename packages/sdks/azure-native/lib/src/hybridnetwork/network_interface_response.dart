// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_ipconfiguration_response.dart';

/// Network interface properties.
class NetworkInterfaceResponse {
  /// A list of IP configurations of the network interface.
  final pulumi.Input<List<NetworkInterfaceIPConfigurationResponse>?>? ipConfigurations;
  /// The MAC address of the network interface.
  final pulumi.Input<String?>? macAddress;
  /// The name of the network interface.
  final pulumi.Input<String?>? networkInterfaceName;
  /// The type of the VM switch.
  final pulumi.Input<String?>? vmSwitchType;

  /// Creates a new [NetworkInterfaceResponse].
  /// [ipConfigurations] A list of IP configurations of the network interface.
  /// [macAddress] The MAC address of the network interface.
  /// [networkInterfaceName] The name of the network interface.
  /// [vmSwitchType] The type of the VM switch.
  const NetworkInterfaceResponse({
    this.ipConfigurations,
    this.macAddress,
    this.networkInterfaceName,
    this.vmSwitchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceIPConfigurationResponse>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<NetworkInterfaceIPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'macAddress': ?macAddress,
      'networkInterfaceName': ?networkInterfaceName,
      'vmSwitchType': ?vmSwitchType,
    };
  }

  factory NetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceResponse(
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceIPConfigurationResponse>(guardedValue, (value) => NetworkInterfaceIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceName: (() { final guardedValue = map['networkInterfaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmSwitchType: (() { final guardedValue = map['vmSwitchType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
