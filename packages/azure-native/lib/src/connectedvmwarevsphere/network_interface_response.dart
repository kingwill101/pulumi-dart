// ignore_for_file: unused_element, unnecessary_cast

import 'nic_ipsettings_response.dart';

/// Network Interface model
class NetworkInterfaceResponse {
  /// Gets or sets the device key value.
  final int? deviceKey;
  /// Gets or sets the nic ip addresses.
  final List<String> ipAddresses;
  /// Gets or sets the ipsettings.
  final NicIPSettingsResponse? ipSettings;
  /// Gets or sets the label of the virtual network in vCenter that the nic is connected to.
  final String label;
  /// Gets or sets the NIC MAC address.
  final String macAddress;
  /// Gets or sets the name of the network interface.
  final String? name;
  /// Gets or sets the ARM Id of the network resource to connect the virtual machine.
  final String? networkId;
  /// Gets or sets the name of the virtual network in vCenter that the nic is connected to.
  final String networkMoName;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID of the virtual network
  /// that the nic is connected to.
  final String networkMoRefId;
  /// NIC type
  final String? nicType;
  /// Gets or sets the power on boot.
  final String? powerOnBoot;

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
      'ipSettings': ?ipSettings == null ? null : ipSettings!.toMap(),
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
      deviceKey: map['deviceKey'] == null ? null : map['deviceKey'] as int,
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
      ipSettings: map['ipSettings'] == null ? null : NicIPSettingsResponse.fromMap((map['ipSettings'] as Map).cast<String, dynamic>()),
      label: map['label'] as String,
      macAddress: map['macAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkId: map['networkId'] == null ? null : map['networkId'] as String,
      networkMoName: map['networkMoName'] as String,
      networkMoRefId: map['networkMoRefId'] as String,
      nicType: map['nicType'] == null ? null : map['nicType'] as String,
      powerOnBoot: map['powerOnBoot'] == null ? null : map['powerOnBoot'] as String,
    );
  }
}

