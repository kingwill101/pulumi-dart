// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_launch_template_network_interface_connection_tracking_specification/get_launch_template_network_interface_connection_tracking_specification.dart';

class GetLaunchTemplateNetworkInterface {
  final String associateCarrierIpAddress;
  final bool? associatePublicIpAddress;
  final List<GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification>
      connectionTrackingSpecifications;
  final bool? deleteOnTermination;
  final String description;
  final int deviceIndex;
  final String interfaceType;
  final int ipv4AddressCount;
  final List<String> ipv4Addresses;
  final int ipv4PrefixCount;
  final List<String> ipv4Prefixes;
  final int ipv6AddressCount;
  final List<String> ipv6Addresses;
  final int ipv6PrefixCount;
  final List<String> ipv6Prefixes;
  final int networkCardIndex;
  final String networkInterfaceId;
  final String primaryIpv6;
  final String privateIpAddress;
  final List<String> securityGroups;
  final String subnetId;

  GetLaunchTemplateNetworkInterface({
    required this.associateCarrierIpAddress,
    this.associatePublicIpAddress,
    required this.connectionTrackingSpecifications,
    this.deleteOnTermination,
    required this.description,
    required this.deviceIndex,
    required this.interfaceType,
    required this.ipv4AddressCount,
    required this.ipv4Addresses,
    required this.ipv4PrefixCount,
    required this.ipv4Prefixes,
    required this.ipv6AddressCount,
    required this.ipv6Addresses,
    required this.ipv6PrefixCount,
    required this.ipv6Prefixes,
    required this.networkCardIndex,
    required this.networkInterfaceId,
    required this.primaryIpv6,
    required this.privateIpAddress,
    required this.securityGroups,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['associateCarrierIpAddress'] = associateCarrierIpAddress;
    final associatePublicIpAddressValue = associatePublicIpAddress;
    if (associatePublicIpAddressValue != null) {
      map['associatePublicIpAddress'] = associatePublicIpAddressValue;
    }
    map['connectionTrackingSpecifications'] = Input.encodeList<
            GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification,
            Map<String, dynamic>>(
        connectionTrackingSpecifications, (value) => value.toMap());
    final deleteOnTerminationValue = deleteOnTermination;
    if (deleteOnTerminationValue != null) {
      map['deleteOnTermination'] = deleteOnTerminationValue;
    }
    map['description'] = description;
    map['deviceIndex'] = deviceIndex;
    map['interfaceType'] = interfaceType;
    map['ipv4AddressCount'] = ipv4AddressCount;
    map['ipv4Addresses'] = ipv4Addresses;
    map['ipv4PrefixCount'] = ipv4PrefixCount;
    map['ipv4Prefixes'] = ipv4Prefixes;
    map['ipv6AddressCount'] = ipv6AddressCount;
    map['ipv6Addresses'] = ipv6Addresses;
    map['ipv6PrefixCount'] = ipv6PrefixCount;
    map['ipv6Prefixes'] = ipv6Prefixes;
    map['networkCardIndex'] = networkCardIndex;
    map['networkInterfaceId'] = networkInterfaceId;
    map['primaryIpv6'] = primaryIpv6;
    map['privateIpAddress'] = privateIpAddress;
    map['securityGroups'] = securityGroups;
    map['subnetId'] = subnetId;
    return map;
  }

  factory GetLaunchTemplateNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateNetworkInterface(
      associateCarrierIpAddress: map['associateCarrierIpAddress'] as String,
      associatePublicIpAddress: map['associatePublicIpAddress'] == null
          ? null
          : map['associatePublicIpAddress'] as bool,
      connectionTrackingSpecifications: Input.decodeList<
              GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification>(
          map['connectionTrackingSpecifications'],
          (value) =>
              GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification
                  .fromMap((value as Map).cast<String, dynamic>())),
      deleteOnTermination: map['deleteOnTermination'] == null
          ? null
          : map['deleteOnTermination'] as bool,
      description: map['description'] as String,
      deviceIndex: map['deviceIndex'] as int,
      interfaceType: map['interfaceType'] as String,
      ipv4AddressCount: map['ipv4AddressCount'] as int,
      ipv4Addresses: (map['ipv4Addresses'] as List).cast<String>(),
      ipv4PrefixCount: map['ipv4PrefixCount'] as int,
      ipv4Prefixes: (map['ipv4Prefixes'] as List).cast<String>(),
      ipv6AddressCount: map['ipv6AddressCount'] as int,
      ipv6Addresses: (map['ipv6Addresses'] as List).cast<String>(),
      ipv6PrefixCount: map['ipv6PrefixCount'] as int,
      ipv6Prefixes: (map['ipv6Prefixes'] as List).cast<String>(),
      networkCardIndex: map['networkCardIndex'] as int,
      networkInterfaceId: map['networkInterfaceId'] as String,
      primaryIpv6: map['primaryIpv6'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      subnetId: map['subnetId'] as String,
    );
  }
}
