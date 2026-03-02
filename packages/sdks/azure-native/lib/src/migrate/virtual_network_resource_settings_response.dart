// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_resource_settings_response.dart';

/// Defines the virtual network resource settings.
class VirtualNetworkResourceSettingsResponse {
  /// Gets or sets the address prefixes for the virtual network.
  final pulumi.Input<List<String>>? addressSpace;
  /// Gets or sets DHCPOptions that contains an array of DNS servers available to VMs
  /// deployed in the virtual network.
  final pulumi.Input<List<String>>? dnsServers;
  /// Gets or sets a value indicating whether gets or sets whether the
  /// DDOS protection should be switched on.
  final pulumi.Input<bool>? enableDdosProtection;
  /// The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// Expected value is 'Microsoft.Network/virtualNetworks'.
  final pulumi.Input<String> resourceType;
  /// Gets or sets List of subnets in a VirtualNetwork.
  final pulumi.Input<List<SubnetResourceSettingsResponse>>? subnets;
  /// Gets or sets the Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Gets or sets the target resource group name.
  final pulumi.Input<String>? targetResourceGroupName;
  /// Gets or sets the target Resource name.
  final pulumi.Input<String>? targetResourceName;

  /// Creates a new [VirtualNetworkResourceSettingsResponse].
  /// [addressSpace] Gets or sets the address prefixes for the virtual network.
  /// [dnsServers] Gets or sets DHCPOptions that contains an array of DNS servers available to VMs
  /// [enableDdosProtection] Gets or sets a value indicating whether gets or sets whether the
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [subnets] Gets or sets List of subnets in a VirtualNetwork.
  /// [tags] Gets or sets the Resource tags.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  VirtualNetworkResourceSettingsResponse({
    this.addressSpace,
    this.dnsServers,
    this.enableDdosProtection,
    required this.resourceType,
    this.subnets,
    this.tags,
    this.targetResourceGroupName,
    this.targetResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': ?addressSpace,
      'dnsServers': ?dnsServers,
      'enableDdosProtection': ?enableDdosProtection,
      'resourceType': resourceType,
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<SubnetResourceSettingsResponse>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<SubnetResourceSettingsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'targetResourceGroupName': ?targetResourceGroupName,
      'targetResourceName': ?targetResourceName,
    };
  }

  factory VirtualNetworkResourceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkResourceSettingsResponse(
      addressSpace: map['addressSpace'] == null ? null : ((map['addressSpace']! as List).cast<String>()).input(),
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers']! as List).cast<String>()).input(),
      enableDdosProtection: map['enableDdosProtection'] == null ? null : (map['enableDdosProtection']! as bool).input(),
      resourceType: (map['resourceType'] as String).input(),
      subnets: map['subnets'] == null ? null : (pulumi.Input.decodeList<SubnetResourceSettingsResponse>(map['subnets']!, (value) => SubnetResourceSettingsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      targetResourceGroupName: map['targetResourceGroupName'] == null ? null : (map['targetResourceGroupName']! as String).input(),
      targetResourceName: map['targetResourceName'] == null ? null : (map['targetResourceName']! as String).input(),
    );
  }
}

