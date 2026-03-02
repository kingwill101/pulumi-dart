// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address_range_response.dart';

/// Network adapter configuration.
class NetworkAdapterResponse {
  /// Adapter Name.
  final pulumi.Input<String>? adapterName;
  /// Array of DNS addresses.
  final pulumi.Input<List<String>>? dnsAddressArray;
  /// Gateway id.
  final pulumi.Input<String>? gateway;
  /// IP address.
  final pulumi.Input<String>? ipAddress;
  /// IP address range.
  final pulumi.Input<IpAddressRangeResponse>? ipAddressRange;
  /// Type of IP assignment.
  final pulumi.Input<String> ipAssignmentType;
  /// MAC address.
  final pulumi.Input<String>? macAddress;
  /// Subnet mask.
  final pulumi.Input<String>? subnetMask;
  /// VLAN ID for the network setup.
  final pulumi.Input<String>? vlanId;

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
      'ipAddressRange': ?pulumi.Input.mapOptionalInputValue<IpAddressRangeResponse, Map<String, dynamic>>(ipAddressRange, (value) => value.toMap()),
      'ipAssignmentType': ipAssignmentType,
      'macAddress': ?macAddress,
      'subnetMask': ?subnetMask,
      'vlanId': ?vlanId,
    };
  }

  factory NetworkAdapterResponse.fromMap(Map<String, dynamic> map) {
    return NetworkAdapterResponse(
      adapterName: map['adapterName'] == null ? null : (map['adapterName']! as String).input(),
      dnsAddressArray: map['dnsAddressArray'] == null ? null : ((map['dnsAddressArray']! as List).cast<String>()).input(),
      gateway: map['gateway'] == null ? null : (map['gateway']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      ipAddressRange: map['ipAddressRange'] == null ? null : (IpAddressRangeResponse.fromMap((map['ipAddressRange']! as Map).cast<String, dynamic>())).input(),
      ipAssignmentType: (map['ipAssignmentType'] as String).input(),
      macAddress: map['macAddress'] == null ? null : (map['macAddress']! as String).input(),
      subnetMask: map['subnetMask'] == null ? null : (map['subnetMask']! as String).input(),
      vlanId: map['vlanId'] == null ? null : (map['vlanId']! as String).input(),
    );
  }
}

