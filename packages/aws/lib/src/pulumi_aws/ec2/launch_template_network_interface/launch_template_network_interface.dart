// ignore_for_file: unused_element, unnecessary_cast

import '../launch_template_network_interface_connection_tracking_specification/launch_template_network_interface_connection_tracking_specification.dart';
import '../launch_template_network_interface_ena_srd_specification/launch_template_network_interface_ena_srd_specification.dart';

class LaunchTemplateNetworkInterface {
  /// Associate a Carrier IP address with <span pulumi-lang-nodejs="`eth0`" pulumi-lang-dotnet="`Eth0`" pulumi-lang-go="`eth0`" pulumi-lang-python="`eth0`" pulumi-lang-yaml="`eth0`" pulumi-lang-java="`eth0`">`eth0`</span> for a new network interface. Use this option when you launch an instance in a Wavelength Zone and want to associate a Carrier IP address with the network interface. Boolean value, can be left unset.
  final String? associateCarrierIpAddress;

  /// Associate a public ip address with the network interface. Boolean value, can be left unset.
  final String? associatePublicIpAddress;

  /// The Connection Tracking Configuration for the network interface. See [Amazon EC2 security group connection tracking](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#connection-tracking-timeouts)
  final LaunchTemplateNetworkInterfaceConnectionTrackingSpecification?
      connectionTrackingSpecification;

  /// Whether the network interface should be destroyed on instance termination.
  final String? deleteOnTermination;

  /// Description of the network interface.
  final String? description;

  /// The integer index of the network interface attachment.
  final int? deviceIndex;

  /// Configuration for Elastic Network Adapter (ENA) Express settings. Applies to network interfaces that use the [ena Express](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena-express.html) feature. See details below.
  final LaunchTemplateNetworkInterfaceEnaSrdSpecification? enaSrdSpecification;

  /// The type of network interface. To create an Elastic Fabric Adapter (EFA), specify <span pulumi-lang-nodejs="`efa`" pulumi-lang-dotnet="`Efa`" pulumi-lang-go="`efa`" pulumi-lang-python="`efa`" pulumi-lang-yaml="`efa`" pulumi-lang-java="`efa`">`efa`</span>.
  final String? interfaceType;

  /// The number of secondary private IPv4 addresses to assign to a network interface. Conflicts with <span pulumi-lang-nodejs="`ipv4Addresses`" pulumi-lang-dotnet="`Ipv4Addresses`" pulumi-lang-go="`ipv4Addresses`" pulumi-lang-python="`ipv4_addresses`" pulumi-lang-yaml="`ipv4Addresses`" pulumi-lang-java="`ipv4Addresses`">`ipv4_addresses`</span>
  final int? ipv4AddressCount;

  /// One or more private IPv4 addresses to associate. Conflicts with <span pulumi-lang-nodejs="`ipv4AddressCount`" pulumi-lang-dotnet="`Ipv4AddressCount`" pulumi-lang-go="`ipv4AddressCount`" pulumi-lang-python="`ipv4_address_count`" pulumi-lang-yaml="`ipv4AddressCount`" pulumi-lang-java="`ipv4AddressCount`">`ipv4_address_count`</span>
  final List<String>? ipv4Addresses;

  /// The number of IPv4 prefixes to be automatically assigned to the network interface. Conflicts with <span pulumi-lang-nodejs="`ipv4Prefixes`" pulumi-lang-dotnet="`Ipv4Prefixes`" pulumi-lang-go="`ipv4Prefixes`" pulumi-lang-python="`ipv4_prefixes`" pulumi-lang-yaml="`ipv4Prefixes`" pulumi-lang-java="`ipv4Prefixes`">`ipv4_prefixes`</span>
  final int? ipv4PrefixCount;

  /// One or more IPv4 prefixes to be assigned to the network interface. Conflicts with <span pulumi-lang-nodejs="`ipv4PrefixCount`" pulumi-lang-dotnet="`Ipv4PrefixCount`" pulumi-lang-go="`ipv4PrefixCount`" pulumi-lang-python="`ipv4_prefix_count`" pulumi-lang-yaml="`ipv4PrefixCount`" pulumi-lang-java="`ipv4PrefixCount`">`ipv4_prefix_count`</span>
  final List<String>? ipv4Prefixes;

  /// The number of IPv6 addresses to assign to a network interface. Conflicts with <span pulumi-lang-nodejs="`ipv6Addresses`" pulumi-lang-dotnet="`Ipv6Addresses`" pulumi-lang-go="`ipv6Addresses`" pulumi-lang-python="`ipv6_addresses`" pulumi-lang-yaml="`ipv6Addresses`" pulumi-lang-java="`ipv6Addresses`">`ipv6_addresses`</span>
  final int? ipv6AddressCount;

  /// One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Conflicts with <span pulumi-lang-nodejs="`ipv6AddressCount`" pulumi-lang-dotnet="`Ipv6AddressCount`" pulumi-lang-go="`ipv6AddressCount`" pulumi-lang-python="`ipv6_address_count`" pulumi-lang-yaml="`ipv6AddressCount`" pulumi-lang-java="`ipv6AddressCount`">`ipv6_address_count`</span>
  final List<String>? ipv6Addresses;

  /// The number of IPv6 prefixes to be automatically assigned to the network interface. Conflicts with <span pulumi-lang-nodejs="`ipv6Prefixes`" pulumi-lang-dotnet="`Ipv6Prefixes`" pulumi-lang-go="`ipv6Prefixes`" pulumi-lang-python="`ipv6_prefixes`" pulumi-lang-yaml="`ipv6Prefixes`" pulumi-lang-java="`ipv6Prefixes`">`ipv6_prefixes`</span>
  final int? ipv6PrefixCount;

  /// One or more IPv6 prefixes to be assigned to the network interface. Conflicts with <span pulumi-lang-nodejs="`ipv6PrefixCount`" pulumi-lang-dotnet="`Ipv6PrefixCount`" pulumi-lang-go="`ipv6PrefixCount`" pulumi-lang-python="`ipv6_prefix_count`" pulumi-lang-yaml="`ipv6PrefixCount`" pulumi-lang-java="`ipv6PrefixCount`">`ipv6_prefix_count`</span>
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
    final map = <String, dynamic>{};
    final associateCarrierIpAddressValue = associateCarrierIpAddress;
    if (associateCarrierIpAddressValue != null) {
      map['associateCarrierIpAddress'] = associateCarrierIpAddressValue;
    }
    final associatePublicIpAddressValue = associatePublicIpAddress;
    if (associatePublicIpAddressValue != null) {
      map['associatePublicIpAddress'] = associatePublicIpAddressValue;
    }
    final connectionTrackingSpecificationValue =
        connectionTrackingSpecification;
    if (connectionTrackingSpecificationValue != null) {
      map['connectionTrackingSpecification'] =
          connectionTrackingSpecificationValue.toMap();
    }
    final deleteOnTerminationValue = deleteOnTermination;
    if (deleteOnTerminationValue != null) {
      map['deleteOnTermination'] = deleteOnTerminationValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final deviceIndexValue = deviceIndex;
    if (deviceIndexValue != null) {
      map['deviceIndex'] = deviceIndexValue;
    }
    final enaSrdSpecificationValue = enaSrdSpecification;
    if (enaSrdSpecificationValue != null) {
      map['enaSrdSpecification'] = enaSrdSpecificationValue.toMap();
    }
    final interfaceTypeValue = interfaceType;
    if (interfaceTypeValue != null) {
      map['interfaceType'] = interfaceTypeValue;
    }
    final ipv4AddressCountValue = ipv4AddressCount;
    if (ipv4AddressCountValue != null) {
      map['ipv4AddressCount'] = ipv4AddressCountValue;
    }
    final ipv4AddressesValue = ipv4Addresses;
    if (ipv4AddressesValue != null) {
      map['ipv4Addresses'] = ipv4AddressesValue;
    }
    final ipv4PrefixCountValue = ipv4PrefixCount;
    if (ipv4PrefixCountValue != null) {
      map['ipv4PrefixCount'] = ipv4PrefixCountValue;
    }
    final ipv4PrefixesValue = ipv4Prefixes;
    if (ipv4PrefixesValue != null) {
      map['ipv4Prefixes'] = ipv4PrefixesValue;
    }
    final ipv6AddressCountValue = ipv6AddressCount;
    if (ipv6AddressCountValue != null) {
      map['ipv6AddressCount'] = ipv6AddressCountValue;
    }
    final ipv6AddressesValue = ipv6Addresses;
    if (ipv6AddressesValue != null) {
      map['ipv6Addresses'] = ipv6AddressesValue;
    }
    final ipv6PrefixCountValue = ipv6PrefixCount;
    if (ipv6PrefixCountValue != null) {
      map['ipv6PrefixCount'] = ipv6PrefixCountValue;
    }
    final ipv6PrefixesValue = ipv6Prefixes;
    if (ipv6PrefixesValue != null) {
      map['ipv6Prefixes'] = ipv6PrefixesValue;
    }
    final networkCardIndexValue = networkCardIndex;
    if (networkCardIndexValue != null) {
      map['networkCardIndex'] = networkCardIndexValue;
    }
    final networkInterfaceIdValue = networkInterfaceId;
    if (networkInterfaceIdValue != null) {
      map['networkInterfaceId'] = networkInterfaceIdValue;
    }
    final primaryIpv6Value = primaryIpv6;
    if (primaryIpv6Value != null) {
      map['primaryIpv6'] = primaryIpv6Value;
    }
    final privateIpAddressValue = privateIpAddress;
    if (privateIpAddressValue != null) {
      map['privateIpAddress'] = privateIpAddressValue;
    }
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = securityGroupsValue;
    }
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    return map;
  }

  factory LaunchTemplateNetworkInterface.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateNetworkInterface(
      associateCarrierIpAddress: map['associateCarrierIpAddress'] == null
          ? null
          : map['associateCarrierIpAddress'] as String,
      associatePublicIpAddress: map['associatePublicIpAddress'] == null
          ? null
          : map['associatePublicIpAddress'] as String,
      connectionTrackingSpecification:
          map['connectionTrackingSpecification'] == null
              ? null
              : LaunchTemplateNetworkInterfaceConnectionTrackingSpecification
                  .fromMap((map['connectionTrackingSpecification'] as Map)
                      .cast<String, dynamic>()),
      deleteOnTermination: map['deleteOnTermination'] == null
          ? null
          : map['deleteOnTermination'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      deviceIndex:
          map['deviceIndex'] == null ? null : map['deviceIndex'] as int,
      enaSrdSpecification: map['enaSrdSpecification'] == null
          ? null
          : LaunchTemplateNetworkInterfaceEnaSrdSpecification.fromMap(
              (map['enaSrdSpecification'] as Map).cast<String, dynamic>()),
      interfaceType:
          map['interfaceType'] == null ? null : map['interfaceType'] as String,
      ipv4AddressCount: map['ipv4AddressCount'] == null
          ? null
          : map['ipv4AddressCount'] as int,
      ipv4Addresses: map['ipv4Addresses'] == null
          ? null
          : (map['ipv4Addresses'] as List).cast<String>(),
      ipv4PrefixCount:
          map['ipv4PrefixCount'] == null ? null : map['ipv4PrefixCount'] as int,
      ipv4Prefixes: map['ipv4Prefixes'] == null
          ? null
          : (map['ipv4Prefixes'] as List).cast<String>(),
      ipv6AddressCount: map['ipv6AddressCount'] == null
          ? null
          : map['ipv6AddressCount'] as int,
      ipv6Addresses: map['ipv6Addresses'] == null
          ? null
          : (map['ipv6Addresses'] as List).cast<String>(),
      ipv6PrefixCount:
          map['ipv6PrefixCount'] == null ? null : map['ipv6PrefixCount'] as int,
      ipv6Prefixes: map['ipv6Prefixes'] == null
          ? null
          : (map['ipv6Prefixes'] as List).cast<String>(),
      networkCardIndex: map['networkCardIndex'] == null
          ? null
          : map['networkCardIndex'] as int,
      networkInterfaceId: map['networkInterfaceId'] == null
          ? null
          : map['networkInterfaceId'] as String,
      primaryIpv6:
          map['primaryIpv6'] == null ? null : map['primaryIpv6'] as String,
      privateIpAddress: map['privateIpAddress'] == null
          ? null
          : map['privateIpAddress'] as String,
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}
