// ignore_for_file: unused_element, unnecessary_cast

import 'guest_osniccustomization_response.dart';
import 'virtual_network_response.dart';

/// Virtual NIC model
class VirtualNicResponse {
  /// guest OS customization for nic
  final GuestOSNICCustomizationResponse? customization;
  /// NIC ip address
  final List<String>? ipAddresses;
  /// NIC MAC address
  final String? macAddress;
  /// Virtual Network
  final VirtualNetworkResponse network;
  /// NIC type
  final String nicType;
  /// Is NIC powered on/off on boot
  final bool? powerOnBoot;
  /// NIC id
  final String? virtualNicId;
  /// NIC name
  final String virtualNicName;

  /// Creates a new [VirtualNicResponse].
  /// [customization] guest OS customization for nic
  /// [ipAddresses] NIC ip address
  /// [macAddress] NIC MAC address
  /// [network] Virtual Network
  /// [nicType] NIC type
  /// [powerOnBoot] Is NIC powered on/off on boot
  /// [virtualNicId] NIC id
  /// [virtualNicName] NIC name
  VirtualNicResponse({
    this.customization,
    this.ipAddresses,
    this.macAddress,
    required this.network,
    required this.nicType,
    this.powerOnBoot,
    this.virtualNicId,
    required this.virtualNicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customization': ?customization == null ? null : customization!.toMap(),
      'ipAddresses': ?ipAddresses,
      'macAddress': ?macAddress,
      'network': network.toMap(),
      'nicType': nicType,
      'powerOnBoot': ?powerOnBoot,
      'virtualNicId': ?virtualNicId,
      'virtualNicName': virtualNicName,
    };
  }

  factory VirtualNicResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNicResponse(
      customization: map['customization'] == null ? null : GuestOSNICCustomizationResponse.fromMap((map['customization'] as Map).cast<String, dynamic>()),
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
      macAddress: map['macAddress'] == null ? null : map['macAddress'] as String,
      network: VirtualNetworkResponse.fromMap((map['network'] as Map).cast<String, dynamic>()),
      nicType: map['nicType'] as String,
      powerOnBoot: map['powerOnBoot'] == null ? null : map['powerOnBoot'] as bool,
      virtualNicId: map['virtualNicId'] == null ? null : map['virtualNicId'] as String,
      virtualNicName: map['virtualNicName'] as String,
    );
  }
}

