// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nic_ipsettings_response.dart';

/// Network Interface model
class NetworkInterfaceResponse {
  /// Gets or sets the device key value.
  final pulumi.Input<int>? deviceKey;
  /// Gets or sets the nic ip addresses.
  final pulumi.Input<List<String>> ipAddresses;
  /// Gets or sets the ipsettings.
  final pulumi.Input<NicIPSettingsResponse>? ipSettings;
  /// Gets or sets the label of the virtual network in vCenter that the nic is connected to.
  final pulumi.Input<String> label;
  /// Gets or sets the NIC MAC address.
  final pulumi.Input<String> macAddress;
  /// Gets or sets the name of the network interface.
  final pulumi.Input<String>? name;
  /// Gets or sets the ARM Id of the network resource to connect the virtual machine.
  final pulumi.Input<String>? networkId;
  /// Gets or sets the name of the virtual network in vCenter that the nic is connected to.
  final pulumi.Input<String> networkMoName;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID of the virtual network
  /// that the nic is connected to.
  final pulumi.Input<String> networkMoRefId;
  /// NIC type
  final pulumi.Input<String>? nicType;
  /// Gets or sets the power on boot.
  final pulumi.Input<String>? powerOnBoot;

  /// Creates a new [NetworkInterfaceResponse].
  /// [deviceKey] Gets or sets the device key value.
  /// [ipAddresses] Gets or sets the nic ip addresses.
  /// [ipSettings] Gets or sets the ipsettings.
  /// [label] Gets or sets the label of the virtual network in vCenter that the nic is connected to.
  /// [macAddress] Gets or sets the NIC MAC address.
  /// [name] Gets or sets the name of the network interface.
  /// [networkId] Gets or sets the ARM Id of the network resource to connect the virtual machine.
  /// [networkMoName] Gets or sets the name of the virtual network in vCenter that the nic is connected to.
  /// [networkMoRefId] Gets or sets the vCenter MoRef (Managed Object Reference) ID of the virtual network
  /// [nicType] NIC type
  /// [powerOnBoot] Gets or sets the power on boot.
  NetworkInterfaceResponse({
    this.deviceKey,
    required this.ipAddresses,
    this.ipSettings,
    required this.label,
    required this.macAddress,
    this.name,
    this.networkId,
    required this.networkMoName,
    required this.networkMoRefId,
    this.nicType,
    this.powerOnBoot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceKey': ?deviceKey,
      'ipAddresses': ipAddresses,
      'ipSettings': ?pulumi.Input.mapOptionalInputValue<NicIPSettingsResponse, Map<String, dynamic>>(ipSettings, (value) => value.toMap()),
      'label': label,
      'macAddress': macAddress,
      'name': ?name,
      'networkId': ?networkId,
      'networkMoName': networkMoName,
      'networkMoRefId': networkMoRefId,
      'nicType': ?nicType,
      'powerOnBoot': ?powerOnBoot,
    };
  }

  factory NetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceResponse(
      deviceKey: map['deviceKey'] == null ? null : (map['deviceKey']! as int).input(),
      ipAddresses: ((map['ipAddresses'] as List).cast<String>()).input(),
      ipSettings: map['ipSettings'] == null ? null : (NicIPSettingsResponse.fromMap((map['ipSettings']! as Map).cast<String, dynamic>())).input(),
      label: (map['label'] as String).input(),
      macAddress: (map['macAddress'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkId: map['networkId'] == null ? null : (map['networkId']! as String).input(),
      networkMoName: (map['networkMoName'] as String).input(),
      networkMoRefId: (map['networkMoRefId'] as String).input(),
      nicType: map['nicType'] == null ? null : (map['nicType']! as String).input(),
      powerOnBoot: map['powerOnBoot'] == null ? null : (map['powerOnBoot']! as String).input(),
    );
  }
}

