// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_template_network_interface_connection_tracking_specification.dart';

class GetLaunchTemplateNetworkInterface {
  final String associateCarrierIpAddress;
  final bool? associatePublicIpAddress;
  final List<GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification> connectionTrackingSpecifications;
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

  /// Creates a new [GetLaunchTemplateNetworkInterface].
  /// [associateCarrierIpAddress] Required.
  /// [associatePublicIpAddress] Optional.
  /// [connectionTrackingSpecifications] Required.
  /// [deleteOnTermination] Optional.
  /// [description] Required.
  /// [deviceIndex] Required.
  /// [interfaceType] Required.
  /// [ipv4AddressCount] Required.
  /// [ipv4Addresses] Required.
  /// [ipv4PrefixCount] Required.
  /// [ipv4Prefixes] Required.
  /// [ipv6AddressCount] Required.
  /// [ipv6Addresses] Required.
  /// [ipv6PrefixCount] Required.
  /// [ipv6Prefixes] Required.
  /// [networkCardIndex] Required.
  /// [networkInterfaceId] Required.
  /// [primaryIpv6] Required.
  /// [privateIpAddress] Required.
  /// [securityGroups] Required.
  /// [subnetId] Required.
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
    return <String, dynamic>{
      'associateCarrierIpAddress': associateCarrierIpAddress,
      'associatePublicIpAddress': ?associatePublicIpAddress,
      'connectionTrackingSpecifications': pulumi.Input.encodeList<GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification, Map<String, dynamic>>(connectionTrackingSpecifications, (value) => value.toMap()),
      'deleteOnTermination': ?deleteOnTermination,
      'description': description,
      'deviceIndex': deviceIndex,
      'interfaceType': interfaceType,
      'ipv4AddressCount': ipv4AddressCount,
      'ipv4Addresses': ipv4Addresses,
      'ipv4PrefixCount': ipv4PrefixCount,
      'ipv4Prefixes': ipv4Prefixes,
      'ipv6AddressCount': ipv6AddressCount,
      'ipv6Addresses': ipv6Addresses,
      'ipv6PrefixCount': ipv6PrefixCount,
      'ipv6Prefixes': ipv6Prefixes,
      'networkCardIndex': networkCardIndex,
      'networkInterfaceId': networkInterfaceId,
      'primaryIpv6': primaryIpv6,
      'privateIpAddress': privateIpAddress,
      'securityGroups': securityGroups,
      'subnetId': subnetId,
    };
  }

  factory GetLaunchTemplateNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateNetworkInterface(
      associateCarrierIpAddress: map['associateCarrierIpAddress'] as String,
      associatePublicIpAddress: map['associatePublicIpAddress'] == null ? null : map['associatePublicIpAddress'] as bool,
      connectionTrackingSpecifications: pulumi.Input.decodeList<GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification>(map['connectionTrackingSpecifications'], (value) => GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification.fromMap((value as Map).cast<String, dynamic>())),
      deleteOnTermination: map['deleteOnTermination'] == null ? null : map['deleteOnTermination'] as bool,
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

