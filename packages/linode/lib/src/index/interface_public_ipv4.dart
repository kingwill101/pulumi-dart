// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interface_public_ipv4_address.dart';
import 'interface_public_ipv4_assigned_address.dart';
import 'interface_public_ipv4_shared.dart';

class InterfacePublicIpv4 {
  /// IPv4 addresses configured for this Linode interface. Each object in this list supports:
  final List<InterfacePublicIpv4Address>? addresses;
  /// (Computed) The IPv4 addresses assigned for use in the VPC subnet, calculated from the `addresses` input. Each object in this set supports:
  final List<InterfacePublicIpv4AssignedAddress>? assignedAddresses;
  /// (Computed) The IPv6 ranges assigned to this Linode interface that are also shared with another Linode. Each object in this set supports:
  final List<InterfacePublicIpv4Shared>? shareds;

  /// Creates a new [InterfacePublicIpv4].
  /// [addresses] IPv4 addresses configured for this Linode interface. Each object in this list supports:
  /// [assignedAddresses] (Computed) The IPv4 addresses assigned for use in the VPC subnet, calculated from the `addresses` input. Each object in this set supports:
  /// [shareds] (Computed) The IPv6 ranges assigned to this Linode interface that are also shared with another Linode. Each object in this set supports:
  InterfacePublicIpv4({
    this.addresses,
    this.assignedAddresses,
    this.shareds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses == null ? null : pulumi.Input.encodeList<InterfacePublicIpv4Address, Map<String, dynamic>>(addresses!, (value) => value.toMap()),
      'assignedAddresses': ?assignedAddresses == null ? null : pulumi.Input.encodeList<InterfacePublicIpv4AssignedAddress, Map<String, dynamic>>(assignedAddresses!, (value) => value.toMap()),
      'shareds': ?shareds == null ? null : pulumi.Input.encodeList<InterfacePublicIpv4Shared, Map<String, dynamic>>(shareds!, (value) => value.toMap()),
    };
  }

  factory InterfacePublicIpv4.fromMap(Map<String, dynamic> map) {
    return InterfacePublicIpv4(
      addresses: map['addresses'] == null ? null : pulumi.Input.decodeList<InterfacePublicIpv4Address>(map['addresses'], (value) => InterfacePublicIpv4Address.fromMap((value as Map).cast<String, dynamic>())),
      assignedAddresses: map['assignedAddresses'] == null ? null : pulumi.Input.decodeList<InterfacePublicIpv4AssignedAddress>(map['assignedAddresses'], (value) => InterfacePublicIpv4AssignedAddress.fromMap((value as Map).cast<String, dynamic>())),
      shareds: map['shareds'] == null ? null : pulumi.Input.decodeList<InterfacePublicIpv4Shared>(map['shareds'], (value) => InterfacePublicIpv4Shared.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

