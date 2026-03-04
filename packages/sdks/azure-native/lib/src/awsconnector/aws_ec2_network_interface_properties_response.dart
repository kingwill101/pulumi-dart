// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_tracking_specification_response.dart';
import 'instance_ipv6_address_response.dart';
import 'ipv4_prefix_specification_response.dart';
import 'ipv6_prefix_specification_response.dart';
import 'private_ip_address_specification_response.dart';
import 'tag_response.dart';

/// Definition of awsEc2NetworkInterface
class AwsEc2NetworkInterfacePropertiesResponse {
  /// Property connectionTrackingSpecification
  final pulumi.Input<ConnectionTrackingSpecificationResponse>?
  connectionTrackingSpecification;

  /// A description for the network interface.
  final pulumi.Input<String>? description;

  /// If you have instances or ENIs that rely on the IPv6 address not changing, to avoid disrupting traffic to instances or ENIs, you can enable a primary IPv6 address. Enable this option to automatically assign an IPv6 associated with the ENI attached to your instance to be the primary IPv6 address. When you enable an IPv6 address to be a primary IPv6, you cannot disable it. Traffic will be routed to the primary IPv6 address until the instance is terminated or the ENI is detached. If you have multiple IPv6 addresses associated with an ENI and you enable a primary IPv6 address, the first IPv6 address associated with the ENI becomes the primary IPv6 address.
  final pulumi.Input<bool>? enablePrimaryIpv6;

  /// A list of security group IDs associated with this network interface.
  final pulumi.Input<List<String>>? groupSet;

  /// Network interface id.
  final pulumi.Input<String>? id;

  /// Indicates the type of network interface.
  final pulumi.Input<String>? interfaceType;

  /// The number of IPv4 prefixes to assign to a network interface. When you specify a number of IPv4 prefixes, Amazon EC2 selects these prefixes from your existing subnet CIDR reservations, if available, or from free spaces in the subnet. By default, these will be /28 prefixes. You can't specify a count of IPv4 prefixes if you've specified one of the following: specific IPv4 prefixes, specific private IPv4 addresses, or a count of private IPv4 addresses.
  final pulumi.Input<int>? ipv4PrefixCount;

  /// Assigns a list of IPv4 prefixes to the network interface. If you want EC2 to automatically assign IPv4 prefixes, use the Ipv4PrefixCount property and do not specify this property. Presently, only /28 prefixes are supported. You can't specify IPv4 prefixes if you've specified one of the following: a count of IPv4 prefixes, specific private IPv4 addresses, or a count of private IPv4 addresses.
  final pulumi.Input<List<Ipv4PrefixSpecificationResponse>>? ipv4Prefixes;

  /// The number of IPv6 addresses to assign to a network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range. To specify specific IPv6 addresses, use the Ipv6Addresses property and don't specify this property.
  final pulumi.Input<int>? ipv6AddressCount;

  /// One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet to associate with the network interface. If you're specifying a number of IPv6 addresses, use the Ipv6AddressCount property and don't specify this property.
  final pulumi.Input<List<InstanceIpv6AddressResponse>>? ipv6Addresses;

  /// The number of IPv6 prefixes to assign to a network interface. When you specify a number of IPv6 prefixes, Amazon EC2 selects these prefixes from your existing subnet CIDR reservations, if available, or from free spaces in the subnet. By default, these will be /80 prefixes. You can't specify a count of IPv6 prefixes if you've specified one of the following: specific IPv6 prefixes, specific IPv6 addresses, or a count of IPv6 addresses.
  final pulumi.Input<int>? ipv6PrefixCount;

  /// Assigns a list of IPv6 prefixes to the network interface. If you want EC2 to automatically assign IPv6 prefixes, use the Ipv6PrefixCount property and do not specify this property. Presently, only /80 prefixes are supported. You can't specify IPv6 prefixes if you've specified one of the following: a count of IPv6 prefixes, specific IPv6 addresses, or a count of IPv6 addresses.
  final pulumi.Input<List<Ipv6PrefixSpecificationResponse>>? ipv6Prefixes;

  /// The primary IPv6 address
  final pulumi.Input<String>? primaryIpv6Address;

  /// Returns the primary private IP address of the network interface.
  final pulumi.Input<String>? primaryPrivateIpAddress;

  /// Assigns a single private IP address to the network interface, which is used as the primary private IP address. If you want to specify multiple private IP address, use the PrivateIpAddresses property.
  final pulumi.Input<String>? privateIpAddress;

  /// Assigns a list of private IP addresses to the network interface. You can specify a primary private IP address by setting the value of the Primary property to true in the PrivateIpAddressSpecification property. If you want EC2 to automatically assign private IP addresses, use the SecondaryPrivateIpAddressCount property and do not specify this property.
  final pulumi.Input<List<PrivateIpAddressSpecificationResponse>>?
  privateIpAddresses;

  /// The number of secondary private IPv4 addresses to assign to a network interface. When you specify a number of secondary IPv4 addresses, Amazon EC2 selects these IP addresses within the subnet's IPv4 CIDR range. You can't specify this option and specify more than one private IP address using privateIpAddresses
  final pulumi.Input<int>? secondaryPrivateIpAddressCount;

  /// Returns the secondary private IP addresses of the network interface.
  final pulumi.Input<List<String>>? secondaryPrivateIpAddresses;

  /// Indicates whether traffic to or from the instance is validated.
  final pulumi.Input<bool>? sourceDestCheck;

  /// The ID of the subnet to associate with the network interface.
  final pulumi.Input<String>? subnetId;

  /// An arbitrary set of tags (key-value pairs) for this network interface.
  final pulumi.Input<List<TagResponse>>? tags;

  /// The ID of the VPC
  final pulumi.Input<String>? vpcId;

  /// Creates a new [AwsEc2NetworkInterfacePropertiesResponse].
  /// [connectionTrackingSpecification] Property connectionTrackingSpecification
  /// [description] A description for the network interface.
  /// [enablePrimaryIpv6] If you have instances or ENIs that rely on the IPv6 address not changing, to avoid disrupting traffic to instances or ENIs, you can enable a primary IPv6 address. Enable this option to automatically assign an IPv6 associated with the ENI attached to your instance to be the primary IPv6 address. When you enable an IPv6 address to be a primary IPv6, you cannot disable it. Traffic will be routed to the primary IPv6 address until the instance is terminated or the ENI is detached. If you have multiple IPv6 addresses associated with an ENI and you enable a primary IPv6 address, the first IPv6 address associated with the ENI becomes the primary IPv6 address.
  /// [groupSet] A list of security group IDs associated with this network interface.
  /// [id] Network interface id.
  /// [interfaceType] Indicates the type of network interface.
  /// [ipv4PrefixCount] The number of IPv4 prefixes to assign to a network interface. When you specify a number of IPv4 prefixes, Amazon EC2 selects these prefixes from your existing subnet CIDR reservations, if available, or from free spaces in the subnet. By default, these will be /28 prefixes. You can't specify a count of IPv4 prefixes if you've specified one of the following: specific IPv4 prefixes, specific private IPv4 addresses, or a count of private IPv4 addresses.
  /// [ipv4Prefixes] Assigns a list of IPv4 prefixes to the network interface. If you want EC2 to automatically assign IPv4 prefixes, use the Ipv4PrefixCount property and do not specify this property. Presently, only /28 prefixes are supported. You can't specify IPv4 prefixes if you've specified one of the following: a count of IPv4 prefixes, specific private IPv4 addresses, or a count of private IPv4 addresses.
  /// [ipv6AddressCount] The number of IPv6 addresses to assign to a network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range. To specify specific IPv6 addresses, use the Ipv6Addresses property and don't specify this property.
  /// [ipv6Addresses] One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet to associate with the network interface. If you're specifying a number of IPv6 addresses, use the Ipv6AddressCount property and don't specify this property.
  /// [ipv6PrefixCount] The number of IPv6 prefixes to assign to a network interface. When you specify a number of IPv6 prefixes, Amazon EC2 selects these prefixes from your existing subnet CIDR reservations, if available, or from free spaces in the subnet. By default, these will be /80 prefixes. You can't specify a count of IPv6 prefixes if you've specified one of the following: specific IPv6 prefixes, specific IPv6 addresses, or a count of IPv6 addresses.
  /// [ipv6Prefixes] Assigns a list of IPv6 prefixes to the network interface. If you want EC2 to automatically assign IPv6 prefixes, use the Ipv6PrefixCount property and do not specify this property. Presently, only /80 prefixes are supported. You can't specify IPv6 prefixes if you've specified one of the following: a count of IPv6 prefixes, specific IPv6 addresses, or a count of IPv6 addresses.
  /// [primaryIpv6Address] The primary IPv6 address
  /// [primaryPrivateIpAddress] Returns the primary private IP address of the network interface.
  /// [privateIpAddress] Assigns a single private IP address to the network interface, which is used as the primary private IP address. If you want to specify multiple private IP address, use the PrivateIpAddresses property.
  /// [privateIpAddresses] Assigns a list of private IP addresses to the network interface. You can specify a primary private IP address by setting the value of the Primary property to true in the PrivateIpAddressSpecification property. If you want EC2 to automatically assign private IP addresses, use the SecondaryPrivateIpAddressCount property and do not specify this property.
  /// [secondaryPrivateIpAddressCount] The number of secondary private IPv4 addresses to assign to a network interface. When you specify a number of secondary IPv4 addresses, Amazon EC2 selects these IP addresses within the subnet's IPv4 CIDR range. You can't specify this option and specify more than one private IP address using privateIpAddresses
  /// [secondaryPrivateIpAddresses] Returns the secondary private IP addresses of the network interface.
  /// [sourceDestCheck] Indicates whether traffic to or from the instance is validated.
  /// [subnetId] The ID of the subnet to associate with the network interface.
  /// [tags] An arbitrary set of tags (key-value pairs) for this network interface.
  /// [vpcId] The ID of the VPC
  AwsEc2NetworkInterfacePropertiesResponse({
    this.connectionTrackingSpecification,
    this.description,
    this.enablePrimaryIpv6,
    this.groupSet,
    this.id,
    this.interfaceType,
    this.ipv4PrefixCount,
    this.ipv4Prefixes,
    this.ipv6AddressCount,
    this.ipv6Addresses,
    this.ipv6PrefixCount,
    this.ipv6Prefixes,
    this.primaryIpv6Address,
    this.primaryPrivateIpAddress,
    this.privateIpAddress,
    this.privateIpAddresses,
    this.secondaryPrivateIpAddressCount,
    this.secondaryPrivateIpAddresses,
    this.sourceDestCheck,
    this.subnetId,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionTrackingSpecification':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionTrackingSpecificationResponse,
            Map<String, dynamic>
          >(connectionTrackingSpecification, (value) => value.toMap()),
      'description': ?description,
      'enablePrimaryIpv6': ?enablePrimaryIpv6,
      'groupSet': ?groupSet,
      'id': ?id,
      'interfaceType': ?interfaceType,
      'ipv4PrefixCount': ?ipv4PrefixCount,
      'ipv4Prefixes':
          ?pulumi.Input.mapOptionalInputValue<
            List<Ipv4PrefixSpecificationResponse>,
            List<Map<String, dynamic>>
          >(
            ipv4Prefixes,
            (value) =>
                pulumi.Input.encodeList<
                  Ipv4PrefixSpecificationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ipv6AddressCount': ?ipv6AddressCount,
      'ipv6Addresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceIpv6AddressResponse>,
            List<Map<String, dynamic>>
          >(
            ipv6Addresses,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceIpv6AddressResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ipv6PrefixCount': ?ipv6PrefixCount,
      'ipv6Prefixes':
          ?pulumi.Input.mapOptionalInputValue<
            List<Ipv6PrefixSpecificationResponse>,
            List<Map<String, dynamic>>
          >(
            ipv6Prefixes,
            (value) =>
                pulumi.Input.encodeList<
                  Ipv6PrefixSpecificationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'primaryIpv6Address': ?primaryIpv6Address,
      'primaryPrivateIpAddress': ?primaryPrivateIpAddress,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAddresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<PrivateIpAddressSpecificationResponse>,
            List<Map<String, dynamic>>
          >(
            privateIpAddresses,
            (value) =>
                pulumi.Input.encodeList<
                  PrivateIpAddressSpecificationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'secondaryPrivateIpAddressCount': ?secondaryPrivateIpAddressCount,
      'secondaryPrivateIpAddresses': ?secondaryPrivateIpAddresses,
      'sourceDestCheck': ?sourceDestCheck,
      'subnetId': ?subnetId,
      'tags':
          ?pulumi.Input.mapOptionalInputValue<
            List<TagResponse>,
            List<Map<String, dynamic>>
          >(
            tags,
            (value) =>
                pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'vpcId': ?vpcId,
    };
  }

  factory AwsEc2NetworkInterfacePropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AwsEc2NetworkInterfacePropertiesResponse(
      connectionTrackingSpecification: (() {
        final guardedValue = map['connectionTrackingSpecification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionTrackingSpecificationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enablePrimaryIpv6: (() {
        final guardedValue = map['enablePrimaryIpv6'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      groupSet: (() {
        final guardedValue = map['groupSet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      interfaceType: (() {
        final guardedValue = map['interfaceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv4PrefixCount: (() {
        final guardedValue = map['ipv4PrefixCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ipv4Prefixes: (() {
        final guardedValue = map['ipv4Prefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Ipv4PrefixSpecificationResponse>(
            guardedValue,
            (value) => Ipv4PrefixSpecificationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ipv6AddressCount: (() {
        final guardedValue = map['ipv6AddressCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ipv6Addresses: (() {
        final guardedValue = map['ipv6Addresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceIpv6AddressResponse>(
            guardedValue,
            (value) => InstanceIpv6AddressResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ipv6PrefixCount: (() {
        final guardedValue = map['ipv6PrefixCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ipv6Prefixes: (() {
        final guardedValue = map['ipv6Prefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Ipv6PrefixSpecificationResponse>(
            guardedValue,
            (value) => Ipv6PrefixSpecificationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      primaryIpv6Address: (() {
        final guardedValue = map['primaryIpv6Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryPrivateIpAddress: (() {
        final guardedValue = map['primaryPrivateIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateIpAddress: (() {
        final guardedValue = map['privateIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateIpAddresses: (() {
        final guardedValue = map['privateIpAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PrivateIpAddressSpecificationResponse>(
            guardedValue,
            (value) => PrivateIpAddressSpecificationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      secondaryPrivateIpAddressCount: (() {
        final guardedValue = map['secondaryPrivateIpAddressCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      secondaryPrivateIpAddresses: (() {
        final guardedValue = map['secondaryPrivateIpAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      sourceDestCheck: (() {
        final guardedValue = map['sourceDestCheck'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TagResponse>(
            guardedValue,
            (value) =>
                TagResponse.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
