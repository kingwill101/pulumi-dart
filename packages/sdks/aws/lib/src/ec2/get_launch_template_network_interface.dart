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
  const GetLaunchTemplateNetworkInterface({
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
      associateCarrierIpAddress: pulumi.Input.fromValue(map['associateCarrierIpAddress'] as String),
      associatePublicIpAddress: (() { final guardedValue = map['associatePublicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectionTrackingSpecifications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification>(map['connectionTrackingSpecifications']!, (value) => GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification.fromMap((value as Map).cast<String, dynamic>()))),
      deleteOnTermination: (() { final guardedValue = map['deleteOnTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      deviceIndex: pulumi.Input.fromValue(map['deviceIndex'] as int),
      interfaceType: pulumi.Input.fromValue(map['interfaceType'] as String),
      ipv4AddressCount: pulumi.Input.fromValue(map['ipv4AddressCount'] as int),
      ipv4Addresses: pulumi.Input.fromValue((map['ipv4Addresses'] as List).cast<String>()),
      ipv4PrefixCount: pulumi.Input.fromValue(map['ipv4PrefixCount'] as int),
      ipv4Prefixes: pulumi.Input.fromValue((map['ipv4Prefixes'] as List).cast<String>()),
      ipv6AddressCount: pulumi.Input.fromValue(map['ipv6AddressCount'] as int),
      ipv6Addresses: pulumi.Input.fromValue((map['ipv6Addresses'] as List).cast<String>()),
      ipv6PrefixCount: pulumi.Input.fromValue(map['ipv6PrefixCount'] as int),
      ipv6Prefixes: pulumi.Input.fromValue((map['ipv6Prefixes'] as List).cast<String>()),
      networkCardIndex: pulumi.Input.fromValue(map['networkCardIndex'] as int),
      networkInterfaceId: pulumi.Input.fromValue(map['networkInterfaceId'] as String),
      primaryIpv6: pulumi.Input.fromValue(map['primaryIpv6'] as String),
      privateIpAddress: pulumi.Input.fromValue(map['privateIpAddress'] as String),
      securityGroups: pulumi.Input.fromValue((map['securityGroups'] as List).cast<String>()),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

