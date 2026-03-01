// ignore_for_file: unused_element, unnecessary_cast

import 'ip_address_range_response.dart';

/// Network adapter configuration.
class NetworkAdapterResponse {
  /// Adapter Name.
  final String? adapterName;
  /// Array of DNS addresses.
  final List<String>? dnsAddressArray;
  /// Gateway id.
  final String? gateway;
  /// IP address.
  final String? ipAddress;
  /// IP address range.
  final IpAddressRangeResponse? ipAddressRange;
  /// Type of IP assignment.
  final String ipAssignmentType;
  /// MAC address.
  final String? macAddress;
  /// Subnet mask.
  final String? subnetMask;
  /// VLAN ID for the network setup.
  final String? vlanId;

  /// Creates a new [NetworkAdapterResponse].
  /// [adapterName] Adapter Name.
  /// [dnsAddressArray] Array of DNS addresses.
  /// [gateway] Gateway id.
  /// [ipAddress] IP address.
  /// [ipAddressRange] IP address range.
  /// [ipAssignmentType] Type of IP assignment.
  /// [macAddress] MAC address.
  /// [subnetMask] Subnet mask.
  /// [vlanId] VLAN ID for the network setup.
  NetworkAdapterResponse({
    this.adapterName,
    this.dnsAddressArray,
    this.gateway,
    this.ipAddress,
    this.ipAddressRange,
    required this.ipAssignmentType,
    this.macAddress,
    this.subnetMask,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adapterName': ?adapterName,
      'dnsAddressArray': ?dnsAddressArray,
      'gateway': ?gateway,
      'ipAddress': ?ipAddress,
      'ipAddressRange': ?ipAddressRange == null ? null : ipAddressRange!.toMap(),
      'ipAssignmentType': ipAssignmentType,
      'macAddress': ?macAddress,
      'subnetMask': ?subnetMask,
      'vlanId': ?vlanId,
    };
  }

  factory NetworkAdapterResponse.fromMap(Map<String, dynamic> map) {
    return NetworkAdapterResponse(
      adapterName: map['adapterName'] == null ? null : map['adapterName'] as String,
      dnsAddressArray: map['dnsAddressArray'] == null ? null : (map['dnsAddressArray'] as List).cast<String>(),
      gateway: map['gateway'] == null ? null : map['gateway'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipAddressRange: map['ipAddressRange'] == null ? null : IpAddressRangeResponse.fromMap((map['ipAddressRange'] as Map).cast<String, dynamic>()),
      ipAssignmentType: map['ipAssignmentType'] as String,
      macAddress: map['macAddress'] == null ? null : map['macAddress'] as String,
      subnetMask: map['subnetMask'] == null ? null : map['subnetMask'] as String,
      vlanId: map['vlanId'] == null ? null : map['vlanId'] as String,
    );
  }
}

