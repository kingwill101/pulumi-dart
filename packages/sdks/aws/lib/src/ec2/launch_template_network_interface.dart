// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_template_network_interface_connection_tracking_specification.dart';
import 'launch_template_network_interface_ena_srd_specification.dart';

class LaunchTemplateNetworkInterface {
  /// Associate a Carrier IP address with `eth0` for a new network interface. Use this option when you launch an instance in a Wavelength Zone and want to associate a Carrier IP address with the network interface. Boolean value, can be left unset.
  final pulumi.Input<String>? associateCarrierIpAddress;
  /// Associate a public ip address with the network interface. Boolean value, can be left unset.
  final pulumi.Input<String>? associatePublicIpAddress;
  /// The Connection Tracking Configuration for the network interface. See [Amazon EC2 security group connection tracking](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#connection-tracking-timeouts)
  final pulumi.Input<LaunchTemplateNetworkInterfaceConnectionTrackingSpecification>? connectionTrackingSpecification;
  /// Whether the network interface should be destroyed on instance termination.
  final pulumi.Input<String>? deleteOnTermination;
  /// Description of the network interface.
  final pulumi.Input<String>? description;
  /// The integer index of the network interface attachment.
  final pulumi.Input<int>? deviceIndex;
  /// Configuration for Elastic Network Adapter (ENA) Express settings. Applies to network interfaces that use the [ena Express](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena-express.html) feature. See details below.
  final pulumi.Input<LaunchTemplateNetworkInterfaceEnaSrdSpecification>? enaSrdSpecification;
  /// The type of network interface. To create an Elastic Fabric Adapter (EFA), specify `efa`.
  final pulumi.Input<String>? interfaceType;
  /// The number of secondary private IPv4 addresses to assign to a network interface. Conflicts with `ipv4_addresses`
  final pulumi.Input<int>? ipv4AddressCount;
  /// One or more private IPv4 addresses to associate. Conflicts with `ipv4_address_count`
  final pulumi.Input<List<String>>? ipv4Addresses;
  /// The number of IPv4 prefixes to be automatically assigned to the network interface. Conflicts with `ipv4_prefixes`
  final pulumi.Input<int>? ipv4PrefixCount;
  /// One or more IPv4 prefixes to be assigned to the network interface. Conflicts with `ipv4_prefix_count`
  final pulumi.Input<List<String>>? ipv4Prefixes;
  /// The number of IPv6 addresses to assign to a network interface. Conflicts with `ipv6_addresses`
  final pulumi.Input<int>? ipv6AddressCount;
  /// One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Conflicts with `ipv6_address_count`
  final pulumi.Input<List<String>>? ipv6Addresses;
  /// The number of IPv6 prefixes to be automatically assigned to the network interface. Conflicts with `ipv6_prefixes`
  final pulumi.Input<int>? ipv6PrefixCount;
  /// One or more IPv6 prefixes to be assigned to the network interface. Conflicts with `ipv6_prefix_count`
  final pulumi.Input<List<String>>? ipv6Prefixes;
  /// The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0.
  final pulumi.Input<int>? networkCardIndex;
  /// The ID of the network interface to attach.
  final pulumi.Input<String>? networkInterfaceId;
  /// Whether the first IPv6 GUA will be made the primary IPv6 address.
  final pulumi.Input<String>? primaryIpv6;
  /// The primary private IPv4 address.
  final pulumi.Input<String>? privateIpAddress;
  /// A list of security group IDs to associate.
  final pulumi.Input<List<String>>? securityGroups;
  /// The VPC Subnet ID to associate.
  final pulumi.Input<String>? subnetId;

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
      'connectionTrackingSpecification': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateNetworkInterfaceConnectionTrackingSpecification, Map<String, dynamic>>(connectionTrackingSpecification, (value) => value.toMap()),
      'deleteOnTermination': ?deleteOnTermination,
      'description': ?description,
      'deviceIndex': ?deviceIndex,
      'enaSrdSpecification': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateNetworkInterfaceEnaSrdSpecification, Map<String, dynamic>>(enaSrdSpecification, (value) => value.toMap()),
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
      associateCarrierIpAddress: map['associateCarrierIpAddress'] == null ? null : ((map['associateCarrierIpAddress'] as String).input()).input(),
      associatePublicIpAddress: map['associatePublicIpAddress'] == null ? null : ((map['associatePublicIpAddress'] as String).input()).input(),
      connectionTrackingSpecification: map['connectionTrackingSpecification'] == null ? null : ((LaunchTemplateNetworkInterfaceConnectionTrackingSpecification.fromMap((map['connectionTrackingSpecification']! as Map).cast<String, dynamic>())).input()).input(),
      deleteOnTermination: map['deleteOnTermination'] == null ? null : ((map['deleteOnTermination'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      deviceIndex: map['deviceIndex'] == null ? null : ((map['deviceIndex'] as int).input()).input(),
      enaSrdSpecification: map['enaSrdSpecification'] == null ? null : ((LaunchTemplateNetworkInterfaceEnaSrdSpecification.fromMap((map['enaSrdSpecification']! as Map).cast<String, dynamic>())).input()).input(),
      interfaceType: map['interfaceType'] == null ? null : ((map['interfaceType'] as String).input()).input(),
      ipv4AddressCount: map['ipv4AddressCount'] == null ? null : ((map['ipv4AddressCount'] as int).input()).input(),
      ipv4Addresses: map['ipv4Addresses'] == null ? null : (((map['ipv4Addresses'] as List).cast<String>()).input()).input(),
      ipv4PrefixCount: map['ipv4PrefixCount'] == null ? null : ((map['ipv4PrefixCount'] as int).input()).input(),
      ipv4Prefixes: map['ipv4Prefixes'] == null ? null : (((map['ipv4Prefixes'] as List).cast<String>()).input()).input(),
      ipv6AddressCount: map['ipv6AddressCount'] == null ? null : ((map['ipv6AddressCount'] as int).input()).input(),
      ipv6Addresses: map['ipv6Addresses'] == null ? null : (((map['ipv6Addresses'] as List).cast<String>()).input()).input(),
      ipv6PrefixCount: map['ipv6PrefixCount'] == null ? null : ((map['ipv6PrefixCount'] as int).input()).input(),
      ipv6Prefixes: map['ipv6Prefixes'] == null ? null : (((map['ipv6Prefixes'] as List).cast<String>()).input()).input(),
      networkCardIndex: map['networkCardIndex'] == null ? null : ((map['networkCardIndex'] as int).input()).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : ((map['networkInterfaceId'] as String).input()).input(),
      primaryIpv6: map['primaryIpv6'] == null ? null : ((map['primaryIpv6'] as String).input()).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : ((map['privateIpAddress'] as String).input()).input(),
      securityGroups: map['securityGroups'] == null ? null : (((map['securityGroups'] as List).cast<String>()).input()).input(),
      subnetId: map['subnetId'] == null ? null : ((map['subnetId'] as String).input()).input(),
    );
  }
}

