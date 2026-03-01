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
  final ConnectionTrackingSpecificationResponse? connectionTrackingSpecification;
  /// A description for the network interface.
  final String? description;
  /// If you have instances or ENIs that rely on the IPv6 address not changing, to avoid disrupting traffic to instances or ENIs, you can enable a primary IPv6 address. Enable this option to automatically assign an IPv6 associated with the ENI attached to your instance to be the primary IPv6 address. When you enable an IPv6 address to be a primary IPv6, you cannot disable it. Traffic will be routed to the primary IPv6 address until the instance is terminated or the ENI is detached. If you have multiple IPv6 addresses associated with an ENI and you enable a primary IPv6 address, the first IPv6 address associated with the ENI becomes the primary IPv6 address.
  final bool? enablePrimaryIpv6;
  /// A list of security group IDs associated with this network interface.
  final List<String>? groupSet;
  /// Network interface id.
  final String? id;
  /// Indicates the type of network interface.
  final String? interfaceType;
  /// The number of IPv4 prefixes to assign to a network interface. When you specify a number of IPv4 prefixes, Amazon EC2 selects these prefixes from your existing subnet CIDR reservations, if available, or from free spaces in the subnet. By default, these will be /28 prefixes. You can't specify a count of IPv4 prefixes if you've specified one of the following: specific IPv4 prefixes, specific private IPv4 addresses, or a count of private IPv4 addresses.
  final int? ipv4PrefixCount;
  /// Assigns a list of IPv4 prefixes to the network interface. If you want EC2 to automatically assign IPv4 prefixes, use the Ipv4PrefixCount property and do not specify this property. Presently, only /28 prefixes are supported. You can't specify IPv4 prefixes if you've specified one of the following: a count of IPv4 prefixes, specific private IPv4 addresses, or a count of private IPv4 addresses.
  final List<Ipv4PrefixSpecificationResponse>? ipv4Prefixes;
  /// The number of IPv6 addresses to assign to a network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range. To specify specific IPv6 addresses, use the Ipv6Addresses property and don't specify this property.
  final int? ipv6AddressCount;
  /// One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet to associate with the network interface. If you're specifying a number of IPv6 addresses, use the Ipv6AddressCount property and don't specify this property.
  final List<InstanceIpv6AddressResponse>? ipv6Addresses;
  /// The number of IPv6 prefixes to assign to a network interface. When you specify a number of IPv6 prefixes, Amazon EC2 selects these prefixes from your existing subnet CIDR reservations, if available, or from free spaces in the subnet. By default, these will be /80 prefixes. You can't specify a count of IPv6 prefixes if you've specified one of the following: specific IPv6 prefixes, specific IPv6 addresses, or a count of IPv6 addresses.
  final int? ipv6PrefixCount;
  /// Assigns a list of IPv6 prefixes to the network interface. If you want EC2 to automatically assign IPv6 prefixes, use the Ipv6PrefixCount property and do not specify this property. Presently, only /80 prefixes are supported. You can't specify IPv6 prefixes if you've specified one of the following: a count of IPv6 prefixes, specific IPv6 addresses, or a count of IPv6 addresses.
  final List<Ipv6PrefixSpecificationResponse>? ipv6Prefixes;
  /// The primary IPv6 address
  final String? primaryIpv6Address;
  /// Returns the primary private IP address of the network interface.
  final String? primaryPrivateIpAddress;
  /// Assigns a single private IP address to the network interface, which is used as the primary private IP address. If you want to specify multiple private IP address, use the PrivateIpAddresses property.
  final String? privateIpAddress;
  /// Assigns a list of private IP addresses to the network interface. You can specify a primary private IP address by setting the value of the Primary property to true in the PrivateIpAddressSpecification property. If you want EC2 to automatically assign private IP addresses, use the SecondaryPrivateIpAddressCount property and do not specify this property.
  final List<PrivateIpAddressSpecificationResponse>? privateIpAddresses;
  /// The number of secondary private IPv4 addresses to assign to a network interface. When you specify a number of secondary IPv4 addresses, Amazon EC2 selects these IP addresses within the subnet's IPv4 CIDR range. You can't specify this option and specify more than one private IP address using privateIpAddresses
  final int? secondaryPrivateIpAddressCount;
  /// Returns the secondary private IP addresses of the network interface.
  final List<String>? secondaryPrivateIpAddresses;
  /// Indicates whether traffic to or from the instance is validated.
  final bool? sourceDestCheck;
  /// The ID of the subnet to associate with the network interface.
  final String? subnetId;
  /// An arbitrary set of tags (key-value pairs) for this network interface.
  final List<TagResponse>? tags;
  /// The ID of the VPC
  final String? vpcId;

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
      'connectionTrackingSpecification': ?connectionTrackingSpecification == null ? null : connectionTrackingSpecification!.toMap(),
      'description': ?description,
      'enablePrimaryIpv6': ?enablePrimaryIpv6,
      'groupSet': ?groupSet,
      'id': ?id,
      'interfaceType': ?interfaceType,
      'ipv4PrefixCount': ?ipv4PrefixCount,
      'ipv4Prefixes': ?ipv4Prefixes == null ? null : pulumi.Input.encodeList<Ipv4PrefixSpecificationResponse, Map<String, dynamic>>(ipv4Prefixes!, (value) => value.toMap()),
      'ipv6AddressCount': ?ipv6AddressCount,
      'ipv6Addresses': ?ipv6Addresses == null ? null : pulumi.Input.encodeList<InstanceIpv6AddressResponse, Map<String, dynamic>>(ipv6Addresses!, (value) => value.toMap()),
      'ipv6PrefixCount': ?ipv6PrefixCount,
      'ipv6Prefixes': ?ipv6Prefixes == null ? null : pulumi.Input.encodeList<Ipv6PrefixSpecificationResponse, Map<String, dynamic>>(ipv6Prefixes!, (value) => value.toMap()),
      'primaryIpv6Address': ?primaryIpv6Address,
      'primaryPrivateIpAddress': ?primaryPrivateIpAddress,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAddresses': ?privateIpAddresses == null ? null : pulumi.Input.encodeList<PrivateIpAddressSpecificationResponse, Map<String, dynamic>>(privateIpAddresses!, (value) => value.toMap()),
      'secondaryPrivateIpAddressCount': ?secondaryPrivateIpAddressCount,
      'secondaryPrivateIpAddresses': ?secondaryPrivateIpAddresses,
      'sourceDestCheck': ?sourceDestCheck,
      'subnetId': ?subnetId,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory AwsEc2NetworkInterfacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2NetworkInterfacePropertiesResponse(
      connectionTrackingSpecification: map['connectionTrackingSpecification'] == null ? null : ConnectionTrackingSpecificationResponse.fromMap((map['connectionTrackingSpecification'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      enablePrimaryIpv6: map['enablePrimaryIpv6'] == null ? null : map['enablePrimaryIpv6'] as bool,
      groupSet: map['groupSet'] == null ? null : (map['groupSet'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      interfaceType: map['interfaceType'] == null ? null : map['interfaceType'] as String,
      ipv4PrefixCount: map['ipv4PrefixCount'] == null ? null : map['ipv4PrefixCount'] as int,
      ipv4Prefixes: map['ipv4Prefixes'] == null ? null : pulumi.Input.decodeList<Ipv4PrefixSpecificationResponse>(map['ipv4Prefixes'], (value) => Ipv4PrefixSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      ipv6AddressCount: map['ipv6AddressCount'] == null ? null : map['ipv6AddressCount'] as int,
      ipv6Addresses: map['ipv6Addresses'] == null ? null : pulumi.Input.decodeList<InstanceIpv6AddressResponse>(map['ipv6Addresses'], (value) => InstanceIpv6AddressResponse.fromMap((value as Map).cast<String, dynamic>())),
      ipv6PrefixCount: map['ipv6PrefixCount'] == null ? null : map['ipv6PrefixCount'] as int,
      ipv6Prefixes: map['ipv6Prefixes'] == null ? null : pulumi.Input.decodeList<Ipv6PrefixSpecificationResponse>(map['ipv6Prefixes'], (value) => Ipv6PrefixSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      primaryIpv6Address: map['primaryIpv6Address'] == null ? null : map['primaryIpv6Address'] as String,
      primaryPrivateIpAddress: map['primaryPrivateIpAddress'] == null ? null : map['primaryPrivateIpAddress'] as String,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      privateIpAddresses: map['privateIpAddresses'] == null ? null : pulumi.Input.decodeList<PrivateIpAddressSpecificationResponse>(map['privateIpAddresses'], (value) => PrivateIpAddressSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      secondaryPrivateIpAddressCount: map['secondaryPrivateIpAddressCount'] == null ? null : map['secondaryPrivateIpAddressCount'] as int,
      secondaryPrivateIpAddresses: map['secondaryPrivateIpAddresses'] == null ? null : (map['secondaryPrivateIpAddresses'] as List).cast<String>(),
      sourceDestCheck: map['sourceDestCheck'] == null ? null : map['sourceDestCheck'] as bool,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

