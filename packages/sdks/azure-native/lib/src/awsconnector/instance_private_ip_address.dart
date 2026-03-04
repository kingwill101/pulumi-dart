// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_network_interface_association.dart';

/// Definition of InstancePrivateIpAddress
class InstancePrivateIpAddress {
  /// &lt;p&gt;The association information for an Elastic IP address for the network interface.&lt;/p&gt;
  final pulumi.Input<InstanceNetworkInterfaceAssociation>? association;

  /// &lt;p&gt;Indicates whether this IPv4 address is the primary private IP address of the network interface.&lt;/p&gt;
  final pulumi.Input<bool>? primary;

  /// &lt;p&gt;The private IPv4 DNS name.&lt;/p&gt;
  final pulumi.Input<String>? privateDnsName;

  /// &lt;p&gt;The private IPv4 address of the network interface.&lt;/p&gt;
  final pulumi.Input<String>? privateIpAddress;

  /// Creates a new [InstancePrivateIpAddress].
  /// [association] &lt;p&gt;The association information for an Elastic IP address for the network interface.&lt;/p&gt;
  /// [primary] &lt;p&gt;Indicates whether this IPv4 address is the primary private IP address of the network interface.&lt;/p&gt;
  /// [privateDnsName] &lt;p&gt;The private IPv4 DNS name.&lt;/p&gt;
  /// [privateIpAddress] &lt;p&gt;The private IPv4 address of the network interface.&lt;/p&gt;
  InstancePrivateIpAddress({
    this.association,
    this.primary,
    this.privateDnsName,
    this.privateIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'association':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceNetworkInterfaceAssociation,
            Map<String, dynamic>
          >(association, (value) => value.toMap()),
      'primary': ?primary,
      'privateDnsName': ?privateDnsName,
      'privateIpAddress': ?privateIpAddress,
    };
  }

  factory InstancePrivateIpAddress.fromMap(Map<String, dynamic> map) {
    return InstancePrivateIpAddress(
      association: (() {
        final guardedValue = map['association'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceNetworkInterfaceAssociation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      primary: (() {
        final guardedValue = map['primary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      privateDnsName: (() {
        final guardedValue = map['privateDnsName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateIpAddress: (() {
        final guardedValue = map['privateIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
