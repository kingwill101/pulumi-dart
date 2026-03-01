// ignore_for_file: unused_element, unnecessary_cast

import 'launch_template_network_interface_connection_tracking_specification.dart';
import 'launch_template_network_interface_ena_srd_specification.dart';

class LaunchTemplateNetworkInterface {
  /// Associate a Carrier IP address with `eth0` for a new network interface. Use this option when you launch an instance in a Wavelength Zone and want to associate a Carrier IP address with the network interface. Boolean value, can be left unset.
  final String? associateCarrierIpAddress;
  /// Associate a public ip address with the network interface. Boolean value, can be left unset.
  final String? associatePublicIpAddress;
  /// The Connection Tracking Configuration for the network interface. See [Amazon EC2 security group connection tracking](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#connection-tracking-timeouts)
  final LaunchTemplateNetworkInterfaceConnectionTrackingSpecification? connectionTrackingSpecification;
  /// Whether the network interface should be destroyed on instance termination.
  final String? deleteOnTermination;
  /// Description of the network interface.
  final String? description;
  /// The integer index of the network interface attachment.
  final int? deviceIndex;
  /// Configuration for Elastic Network Adapter (ENA) Express settings. Applies to network interfaces that use the [ena Express](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena-express.html) feature. See details below.
  final LaunchTemplateNetworkInterfaceEnaSrdSpecification? enaSrdSpecification;
  /// The type of network interface. To create an Elastic Fabric Adapter (EFA), specify `efa`.
  final String? interfaceType;
  /// The number of secondary private IPv4 addresses to assign to a network interface. Conflicts with `ipv4_addresses`
  final int? ipv4AddressCount;
  /// One or more private IPv4 addresses to associate. Conflicts with `ipv4_address_count`
  final List<String>? ipv4Addresses;
  /// The number of IPv4 prefixes to be automatically assigned to the network interface. Conflicts with `ipv4_prefixes`
  final int? ipv4PrefixCount;
  /// One or more IPv4 prefixes to be assigned to the network interface. Conflicts with `ipv4_prefix_count`
  final List<String>? ipv4Prefixes;
  /// The number of IPv6 addresses to assign to a network interface. Conflicts with `ipv6_addresses`
  final int? ipv6AddressCount;
  /// One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Conflicts with `ipv6_address_count`
  final List<String>? ipv6Addresses;
  /// The number of IPv6 prefixes to be automatically assigned to the network interface. Conflicts with `ipv6_prefixes`
  final int? ipv6PrefixCount;
  /// One or more IPv6 prefixes to be assigned to the network interface. Conflicts with `ipv6_prefix_count`
  final List<String>? ipv6Prefixes;
  /// The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0.
  final int? networkCardIndex;
  /// The ID of the network interface to attach.
  final String? networkInterfaceId;
  /// Whether the first IPv6 GUA will be made the primary IPv6 address.
  final String? primaryIpv6;
  /// The primary private IPv4 address.
  final String? privateIpAddress;
  /// A list of security group IDs to associate.
  final List<String>? securityGroups;
  /// The VPC Subnet ID to associate.
  final String? subnetId;

  /// Creates a new [LaunchTemplateNetworkInterface].
  /// [associateCarrierIpAddress] Associate a Carrier IP address with `eth0` for a new network interface. Use this option when you launch an instance in a Wavelength Zone and want to associate a Carrier IP address with the network interface. Boolean value, can be left unset.
  /// [associatePublicIpAddress] Associate a public ip address with the network interface. Boolean value, can be left unset.
  /// [connectionTrackingSpecification] The Connection Tracking Configuration for the network interface. See [Amazon EC2 security group connection tracking](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#connection-tracking-timeouts)
  /// [deleteOnTermination] Whether the network interface should be destroyed on instance termination.
  /// [description] Description of the network interface.
  /// [deviceIndex] The integer index of the network interface attachment.
  /// [enaSrdSpecification] Configuration for Elastic Network Adapter (ENA) Express settings. Applies to network interfaces that use the [ena Express](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena-express.html) feature. See details below.
  /// [interfaceType] The type of network interface. To create an Elastic Fabric Adapter (EFA), specify `efa`.
  /// [ipv4AddressCount] The number of secondary private IPv4 addresses to assign to a network interface. Conflicts with `ipv4_addresses`
  /// [ipv4Addresses] One or more private IPv4 addresses to associate. Conflicts with `ipv4_address_count`
  /// [ipv4PrefixCount] The number of IPv4 prefixes to be automatically assigned to the network interface. Conflicts with `ipv4_prefixes`
  /// [ipv4Prefixes] One or more IPv4 prefixes to be assigned to the network interface. Conflicts with `ipv4_prefix_count`
  /// [ipv6AddressCount] The number of IPv6 addresses to assign to a network interface. Conflicts with `ipv6_addresses`
  /// [ipv6Addresses] One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Conflicts with `ipv6_address_count`
  /// [ipv6PrefixCount] The number of IPv6 prefixes to be automatically assigned to the network interface. Conflicts with `ipv6_prefixes`
  /// [ipv6Prefixes] One or more IPv6 prefixes to be assigned to the network interface. Conflicts with `ipv6_prefix_count`
  /// [networkCardIndex] The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0.
  /// [networkInterfaceId] The ID of the network interface to attach.
  /// [primaryIpv6] Whether the first IPv6 GUA will be made the primary IPv6 address.
  /// [privateIpAddress] The primary private IPv4 address.
  /// [securityGroups] A list of security group IDs to associate.
  /// [subnetId] The VPC Subnet ID to associate.
  LaunchTemplateNetworkInterface({
    this.associateCarrierIpAddress,
    this.associatePublicIpAddress,
    this.connectionTrackingSpecification,
    this.deleteOnTermination,
    this.description,
    this.deviceIndex,
    this.enaSrdSpecification,
    this.interfaceType,
    this.ipv4AddressCount,
    this.ipv4Addresses,
    this.ipv4PrefixCount,
    this.ipv4Prefixes,
    this.ipv6AddressCount,
    this.ipv6Addresses,
    this.ipv6PrefixCount,
    this.ipv6Prefixes,
    this.networkCardIndex,
    this.networkInterfaceId,
    this.primaryIpv6,
    this.privateIpAddress,
    this.securityGroups,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associateCarrierIpAddress': ?associateCarrierIpAddress,
      'associatePublicIpAddress': ?associatePublicIpAddress,
      'connectionTrackingSpecification': ?connectionTrackingSpecification == null ? null : connectionTrackingSpecification!.toMap(),
      'deleteOnTermination': ?deleteOnTermination,
      'description': ?description,
      'deviceIndex': ?deviceIndex,
      'enaSrdSpecification': ?enaSrdSpecification == null ? null : enaSrdSpecification!.toMap(),
      'interfaceType': ?interfaceType,
      'ipv4AddressCount': ?ipv4AddressCount,
      'ipv4Addresses': ?ipv4Addresses,
      'ipv4PrefixCount': ?ipv4PrefixCount,
      'ipv4Prefixes': ?ipv4Prefixes,
      'ipv6AddressCount': ?ipv6AddressCount,
      'ipv6Addresses': ?ipv6Addresses,
      'ipv6PrefixCount': ?ipv6PrefixCount,
      'ipv6Prefixes': ?ipv6Prefixes,
      'networkCardIndex': ?networkCardIndex,
      'networkInterfaceId': ?networkInterfaceId,
      'primaryIpv6': ?primaryIpv6,
      'privateIpAddress': ?privateIpAddress,
      'securityGroups': ?securityGroups,
      'subnetId': ?subnetId,
    };
  }

  factory LaunchTemplateNetworkInterface.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateNetworkInterface(
      associateCarrierIpAddress: map['associateCarrierIpAddress'] == null ? null : map['associateCarrierIpAddress'] as String,
      associatePublicIpAddress: map['associatePublicIpAddress'] == null ? null : map['associatePublicIpAddress'] as String,
      connectionTrackingSpecification: map['connectionTrackingSpecification'] == null ? null : LaunchTemplateNetworkInterfaceConnectionTrackingSpecification.fromMap((map['connectionTrackingSpecification'] as Map).cast<String, dynamic>()),
      deleteOnTermination: map['deleteOnTermination'] == null ? null : map['deleteOnTermination'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      deviceIndex: map['deviceIndex'] == null ? null : map['deviceIndex'] as int,
      enaSrdSpecification: map['enaSrdSpecification'] == null ? null : LaunchTemplateNetworkInterfaceEnaSrdSpecification.fromMap((map['enaSrdSpecification'] as Map).cast<String, dynamic>()),
      interfaceType: map['interfaceType'] == null ? null : map['interfaceType'] as String,
      ipv4AddressCount: map['ipv4AddressCount'] == null ? null : map['ipv4AddressCount'] as int,
      ipv4Addresses: map['ipv4Addresses'] == null ? null : (map['ipv4Addresses'] as List).cast<String>(),
      ipv4PrefixCount: map['ipv4PrefixCount'] == null ? null : map['ipv4PrefixCount'] as int,
      ipv4Prefixes: map['ipv4Prefixes'] == null ? null : (map['ipv4Prefixes'] as List).cast<String>(),
      ipv6AddressCount: map['ipv6AddressCount'] == null ? null : map['ipv6AddressCount'] as int,
      ipv6Addresses: map['ipv6Addresses'] == null ? null : (map['ipv6Addresses'] as List).cast<String>(),
      ipv6PrefixCount: map['ipv6PrefixCount'] == null ? null : map['ipv6PrefixCount'] as int,
      ipv6Prefixes: map['ipv6Prefixes'] == null ? null : (map['ipv6Prefixes'] as List).cast<String>(),
      networkCardIndex: map['networkCardIndex'] == null ? null : map['networkCardIndex'] as int,
      networkInterfaceId: map['networkInterfaceId'] == null ? null : map['networkInterfaceId'] as String,
      primaryIpv6: map['primaryIpv6'] == null ? null : map['primaryIpv6'] as String,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      securityGroups: map['securityGroups'] == null ? null : (map['securityGroups'] as List).cast<String>(),
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

