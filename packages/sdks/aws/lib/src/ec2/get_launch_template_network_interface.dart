// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_template_network_interface_connection_tracking_specification.dart';

class GetLaunchTemplateNetworkInterface {
  final pulumi.Input<String> associateCarrierIpAddress;
  final pulumi.Input<bool>? associatePublicIpAddress;
  final pulumi.Input<List<GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification>> connectionTrackingSpecifications;
  final pulumi.Input<bool>? deleteOnTermination;
  final pulumi.Input<String> description;
  final pulumi.Input<int> deviceIndex;
  final pulumi.Input<String> interfaceType;
  final pulumi.Input<int> ipv4AddressCount;
  final pulumi.Input<List<String>> ipv4Addresses;
  final pulumi.Input<int> ipv4PrefixCount;
  final pulumi.Input<List<String>> ipv4Prefixes;
  final pulumi.Input<int> ipv6AddressCount;
  final pulumi.Input<List<String>> ipv6Addresses;
  final pulumi.Input<int> ipv6PrefixCount;
  final pulumi.Input<List<String>> ipv6Prefixes;
  final pulumi.Input<int> networkCardIndex;
  final pulumi.Input<String> networkInterfaceId;
  final pulumi.Input<String> primaryIpv6;
  final pulumi.Input<String> privateIpAddress;
  final pulumi.Input<List<String>> securityGroups;
  final pulumi.Input<String> subnetId;

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
      'connectionTrackingSpecifications': pulumi.Input.mapInputValue<List<GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification>, List<Map<String, dynamic>>>(connectionTrackingSpecifications, (value) => pulumi.Input.encodeList<GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      associateCarrierIpAddress: (map['associateCarrierIpAddress'] as String).input(),
      associatePublicIpAddress: map['associatePublicIpAddress'] == null ? null : (map['associatePublicIpAddress'] as bool).input(),
      connectionTrackingSpecifications: (pulumi.Input.decodeList<GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification>(map['connectionTrackingSpecifications'], (value) => GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deleteOnTermination: map['deleteOnTermination'] == null ? null : (map['deleteOnTermination'] as bool).input(),
      description: (map['description'] as String).input(),
      deviceIndex: (map['deviceIndex'] as int).input(),
      interfaceType: (map['interfaceType'] as String).input(),
      ipv4AddressCount: (map['ipv4AddressCount'] as int).input(),
      ipv4Addresses: ((map['ipv4Addresses'] as List).cast<String>()).input(),
      ipv4PrefixCount: (map['ipv4PrefixCount'] as int).input(),
      ipv4Prefixes: ((map['ipv4Prefixes'] as List).cast<String>()).input(),
      ipv6AddressCount: (map['ipv6AddressCount'] as int).input(),
      ipv6Addresses: ((map['ipv6Addresses'] as List).cast<String>()).input(),
      ipv6PrefixCount: (map['ipv6PrefixCount'] as int).input(),
      ipv6Prefixes: ((map['ipv6Prefixes'] as List).cast<String>()).input(),
      networkCardIndex: (map['networkCardIndex'] as int).input(),
      networkInterfaceId: (map['networkInterfaceId'] as String).input(),
      primaryIpv6: (map['primaryIpv6'] as String).input(),
      privateIpAddress: (map['privateIpAddress'] as String).input(),
      securityGroups: ((map['securityGroups'] as List).cast<String>()).input(),
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}

