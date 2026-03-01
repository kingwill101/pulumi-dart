// ignore_for_file: unused_element, unnecessary_cast

import 'instance_network_interface_association.dart';

/// Definition of InstancePrivateIpAddress
class InstancePrivateIpAddress {
  /// <p>The association information for an Elastic IP address for the network interface.</p>
  final InstanceNetworkInterfaceAssociation? association;
  /// <p>Indicates whether this IPv4 address is the primary private IP address of the network interface.</p>
  final bool? primary;
  /// <p>The private IPv4 DNS name.</p>
  final String? privateDnsName;
  /// <p>The private IPv4 address of the network interface.</p>
  final String? privateIpAddress;

  /// Creates a new [InstancePrivateIpAddress].
  /// [association] <p>The association information for an Elastic IP address for the network interface.</p>
  /// [primary] <p>Indicates whether this IPv4 address is the primary private IP address of the network interface.</p>
  /// [privateDnsName] <p>The private IPv4 DNS name.</p>
  /// [privateIpAddress] <p>The private IPv4 address of the network interface.</p>
  InstancePrivateIpAddress({
    this.association,
    this.primary,
    this.privateDnsName,
    this.privateIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'association': ?association == null ? null : association!.toMap(),
      'primary': ?primary,
      'privateDnsName': ?privateDnsName,
      'privateIpAddress': ?privateIpAddress,
    };
  }

  factory InstancePrivateIpAddress.fromMap(Map<String, dynamic> map) {
    return InstancePrivateIpAddress(
      association: map['association'] == null ? null : InstanceNetworkInterfaceAssociation.fromMap((map['association'] as Map).cast<String, dynamic>()),
      primary: map['primary'] == null ? null : map['primary'] as bool,
      privateDnsName: map['privateDnsName'] == null ? null : map['privateDnsName'] as String,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
    );
  }
}

