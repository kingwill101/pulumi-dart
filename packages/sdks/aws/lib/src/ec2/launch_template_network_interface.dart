// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_template_network_interface_connection_tracking_specification.dart';
import 'launch_template_network_interface_ena_srd_specification.dart';

class LaunchTemplateNetworkInterface {
  /// Associate a Carrier IP address with `eth0` for a new network interface. Use this option when you launch an instance in a Wavelength Zone and want to associate a Carrier IP address with the network interface. Boolean value, can be left unset.
  final pulumi.Input<String?>? associateCarrierIpAddress;
  /// Associate a public ip address with the network interface. Boolean value, can be left unset.
  final pulumi.Input<String?>? associatePublicIpAddress;
  /// The Connection Tracking Configuration for the network interface. See [Amazon EC2 security group connection tracking](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#connection-tracking-timeouts)
  final pulumi.Input<LaunchTemplateNetworkInterfaceConnectionTrackingSpecification?>? connectionTrackingSpecification;
  /// Whether the network interface should be destroyed on instance termination.
  final pulumi.Input<String?>? deleteOnTermination;
  /// Description of the network interface.
  final pulumi.Input<String?>? description;
  /// The integer index of the network interface attachment.
  final pulumi.Input<int?>? deviceIndex;
  /// The number of ENA queues to be created with the instance. Requires an instance type and operating system that support [ENA queue configuration](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ena-queues.html).
  final pulumi.Input<int?>? enaQueueCount;
  /// Configuration for Elastic Network Adapter (ENA) Express settings. Applies to network interfaces that use the [ena Express](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena-express.html) feature. See details below.
  final pulumi.Input<LaunchTemplateNetworkInterfaceEnaSrdSpecification?>? enaSrdSpecification;
  /// The type of network interface. To create an Elastic Fabric Adapter (EFA), specify `efa`.
  final pulumi.Input<String?>? interfaceType;
  /// The number of secondary private IPv4 addresses to assign to a network interface. Conflicts with `ipv4Addresses`
  final pulumi.Input<int?>? ipv4AddressCount;
  /// One or more private IPv4 addresses to associate. Conflicts with `ipv4AddressCount`
  final pulumi.Input<List<String>?>? ipv4Addresses;
  /// The number of IPv4 prefixes to be automatically assigned to the network interface. Conflicts with `ipv4Prefixes`
  final pulumi.Input<int?>? ipv4PrefixCount;
  /// One or more IPv4 prefixes to be assigned to the network interface. Conflicts with `ipv4PrefixCount`
  final pulumi.Input<List<String>?>? ipv4Prefixes;
  /// The number of IPv6 addresses to assign to a network interface. Conflicts with `ipv6Addresses`
  final pulumi.Input<int?>? ipv6AddressCount;
  /// One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Conflicts with `ipv6AddressCount`
  final pulumi.Input<List<String>?>? ipv6Addresses;
  /// The number of IPv6 prefixes to be automatically assigned to the network interface. Conflicts with `ipv6Prefixes`
  final pulumi.Input<int?>? ipv6PrefixCount;
  /// One or more IPv6 prefixes to be assigned to the network interface. Conflicts with `ipv6PrefixCount`
  final pulumi.Input<List<String>?>? ipv6Prefixes;
  /// The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0.
  final pulumi.Input<int?>? networkCardIndex;
  /// The ID of the network interface to attach.
  final pulumi.Input<String?>? networkInterfaceId;
  /// Whether the first IPv6 GUA will be made the primary IPv6 address.
  final pulumi.Input<String?>? primaryIpv6;
  /// The primary private IPv4 address.
  final pulumi.Input<String?>? privateIpAddress;
  /// A list of security group IDs to associate.
  final pulumi.Input<List<String>?>? securityGroups;
  /// The VPC Subnet ID to associate.
  final pulumi.Input<String?>? subnetId;

  /// Creates a new [LaunchTemplateNetworkInterface].
  /// [associateCarrierIpAddress] Associate a Carrier IP address with `eth0` for a new network interface. Use this option when you launch an instance in a Wavelength Zone and want to associate a Carrier IP address with the network interface. Boolean value, can be left unset.
  /// [associatePublicIpAddress] Associate a public ip address with the network interface. Boolean value, can be left unset.
  /// [connectionTrackingSpecification] The Connection Tracking Configuration for the network interface. See [Amazon EC2 security group connection tracking](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#connection-tracking-timeouts)
  /// [deleteOnTermination] Whether the network interface should be destroyed on instance termination.
  /// [description] Description of the network interface.
  /// [deviceIndex] The integer index of the network interface attachment.
  /// [enaQueueCount] The number of ENA queues to be created with the instance. Requires an instance type and operating system that support [ENA queue configuration](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ena-queues.html).
  /// [enaSrdSpecification] Configuration for Elastic Network Adapter (ENA) Express settings. Applies to network interfaces that use the [ena Express](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena-express.html) feature. See details below.
  /// [interfaceType] The type of network interface. To create an Elastic Fabric Adapter (EFA), specify `efa`.
  /// [ipv4AddressCount] The number of secondary private IPv4 addresses to assign to a network interface. Conflicts with `ipv4Addresses`
  /// [ipv4Addresses] One or more private IPv4 addresses to associate. Conflicts with `ipv4AddressCount`
  /// [ipv4PrefixCount] The number of IPv4 prefixes to be automatically assigned to the network interface. Conflicts with `ipv4Prefixes`
  /// [ipv4Prefixes] One or more IPv4 prefixes to be assigned to the network interface. Conflicts with `ipv4PrefixCount`
  /// [ipv6AddressCount] The number of IPv6 addresses to assign to a network interface. Conflicts with `ipv6Addresses`
  /// [ipv6Addresses] One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Conflicts with `ipv6AddressCount`
  /// [ipv6PrefixCount] The number of IPv6 prefixes to be automatically assigned to the network interface. Conflicts with `ipv6Prefixes`
  /// [ipv6Prefixes] One or more IPv6 prefixes to be assigned to the network interface. Conflicts with `ipv6PrefixCount`
  /// [networkCardIndex] The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0.
  /// [networkInterfaceId] The ID of the network interface to attach.
  /// [primaryIpv6] Whether the first IPv6 GUA will be made the primary IPv6 address.
  /// [privateIpAddress] The primary private IPv4 address.
  /// [securityGroups] A list of security group IDs to associate.
  /// [subnetId] The VPC Subnet ID to associate.
  const LaunchTemplateNetworkInterface({
    this.associateCarrierIpAddress,
    this.associatePublicIpAddress,
    this.connectionTrackingSpecification,
    this.deleteOnTermination,
    this.description,
    this.deviceIndex,
    this.enaQueueCount,
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
      'enaQueueCount': ?enaQueueCount,
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
      associateCarrierIpAddress: (() { final guardedValue = map['associateCarrierIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associatePublicIpAddress: (() { final guardedValue = map['associatePublicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionTrackingSpecification: (() { final guardedValue = map['connectionTrackingSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateNetworkInterfaceConnectionTrackingSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deleteOnTermination: (() { final guardedValue = map['deleteOnTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceIndex: (() { final guardedValue = map['deviceIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      enaQueueCount: (() { final guardedValue = map['enaQueueCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      enaSrdSpecification: (() { final guardedValue = map['enaSrdSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateNetworkInterfaceEnaSrdSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interfaceType: (() { final guardedValue = map['interfaceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4AddressCount: (() { final guardedValue = map['ipv4AddressCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ipv4Addresses: (() { final guardedValue = map['ipv4Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv4PrefixCount: (() { final guardedValue = map['ipv4PrefixCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ipv4Prefixes: (() { final guardedValue = map['ipv4Prefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6AddressCount: (() { final guardedValue = map['ipv6AddressCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ipv6Addresses: (() { final guardedValue = map['ipv6Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6PrefixCount: (() { final guardedValue = map['ipv6PrefixCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ipv6Prefixes: (() { final guardedValue = map['ipv6Prefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      networkCardIndex: (() { final guardedValue = map['networkCardIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryIpv6: (() { final guardedValue = map['primaryIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
