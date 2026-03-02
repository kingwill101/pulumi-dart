// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_network_interface_association_response.dart';

/// Definition of InstancePrivateIpAddress
class InstancePrivateIpAddressResponse {
  /// <p>The association information for an Elastic IP address for the network interface.</p>
  final pulumi.Input<InstanceNetworkInterfaceAssociationResponse>? association;
  /// <p>Indicates whether this IPv4 address is the primary private IP address of the network interface.</p>
  final pulumi.Input<bool>? primary;
  /// <p>The private IPv4 DNS name.</p>
  final pulumi.Input<String>? privateDnsName;
  /// <p>The private IPv4 address of the network interface.</p>
  final pulumi.Input<String>? privateIpAddress;

  /// Creates a new [InstancePrivateIpAddressResponse].
  /// [association] <p>The association information for an Elastic IP address for the network interface.</p>
  /// [primary] <p>Indicates whether this IPv4 address is the primary private IP address of the network interface.</p>
  /// [privateDnsName] <p>The private IPv4 DNS name.</p>
  /// [privateIpAddress] <p>The private IPv4 address of the network interface.</p>
  InstancePrivateIpAddressResponse({
    this.association,
    this.primary,
    this.privateDnsName,
    this.privateIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'association': ?pulumi.Input.mapOptionalInputValue<InstanceNetworkInterfaceAssociationResponse, Map<String, dynamic>>(association, (value) => value.toMap()),
      'primary': ?primary,
      'privateDnsName': ?privateDnsName,
      'privateIpAddress': ?privateIpAddress,
    };
  }

  factory InstancePrivateIpAddressResponse.fromMap(Map<String, dynamic> map) {
    return InstancePrivateIpAddressResponse(
      association: map['association'] == null ? null : (InstanceNetworkInterfaceAssociationResponse.fromMap((map['association'] as Map).cast<String, dynamic>())).input(),
      primary: map['primary'] == null ? null : (map['primary'] as bool).input(),
      privateDnsName: map['privateDnsName'] == null ? null : (map['privateDnsName'] as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress'] as String).input(),
    );
  }
}

