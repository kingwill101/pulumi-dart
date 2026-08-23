// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address_range.dart';

/// Network adapter configuration.
class NetworkAdapter {
  /// Adapter Name.
  final pulumi.Input<String>? adapterName;
  /// Array of DNS addresses.
  final pulumi.Input<List<String>>? dnsAddressArray;
  /// Gateway id.
  final pulumi.Input<String>? gateway;
  /// IP address.
  final pulumi.Input<String>? ipAddress;
  /// IP address range.
  final pulumi.Input<IpAddressRange>? ipAddressRange;
  /// Type of IP assignment.
  final pulumi.Input<String> ipAssignmentType;
  /// MAC address.
  final pulumi.Input<String>? macAddress;
  /// Subnet mask.
  final pulumi.Input<String>? subnetMask;
  /// VLAN ID for the network setup.
  final pulumi.Input<String>? vlanId;

  /// Creates a new [NetworkAdapter].
  /// [adapterName] Adapter Name.
  /// [dnsAddressArray] Array of DNS addresses.
  /// [gateway] Gateway id.
  /// [ipAddress] IP address.
  /// [ipAddressRange] IP address range.
  /// [ipAssignmentType] Type of IP assignment.
  /// [macAddress] MAC address.
  /// [subnetMask] Subnet mask.
  /// [vlanId] VLAN ID for the network setup.
  const NetworkAdapter({
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
      'ipAddressRange': ?pulumi.Input.mapOptionalInputValue<IpAddressRange, Map<String, dynamic>>(ipAddressRange, (value) => value.toMap()),
      'ipAssignmentType': ipAssignmentType,
      'macAddress': ?macAddress,
      'subnetMask': ?subnetMask,
      'vlanId': ?vlanId,
    };
  }

  factory NetworkAdapter.fromMap(Map<String, dynamic> map) {
    return NetworkAdapter(
      adapterName: (() { final guardedValue = map['adapterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsAddressArray: (() { final guardedValue = map['dnsAddressArray']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddressRange: (() { final guardedValue = map['ipAddressRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpAddressRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipAssignmentType: pulumi.Input.fromValue(map['ipAssignmentType'] as String),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetMask: (() { final guardedValue = map['subnetMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlanId: (() { final guardedValue = map['vlanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
