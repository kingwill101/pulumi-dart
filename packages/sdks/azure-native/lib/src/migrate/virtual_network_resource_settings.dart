// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_resource_settings.dart';

/// Defines the virtual network resource settings.
class VirtualNetworkResourceSettings {
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
  final pulumi.Input<List<SubnetResourceSettings>>? subnets;

  /// Gets or sets the Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Gets or sets the target resource group name.
  final pulumi.Input<String>? targetResourceGroupName;

  /// Gets or sets the target Resource name.
  final pulumi.Input<String>? targetResourceName;

  /// Creates a new [VirtualNetworkResourceSettings].
  /// [addressSpace] Gets or sets the address prefixes for the virtual network.
  /// [dnsServers] Gets or sets DHCPOptions that contains an array of DNS servers available to VMs
  /// [enableDdosProtection] Gets or sets a value indicating whether gets or sets whether the
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [subnets] Gets or sets List of subnets in a VirtualNetwork.
  /// [tags] Gets or sets the Resource tags.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  VirtualNetworkResourceSettings({
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
      'subnets':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubnetResourceSettings>,
            List<Map<String, dynamic>>
          >(
            subnets,
            (value) =>
                pulumi.Input.encodeList<
                  SubnetResourceSettings,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': ?tags,
      'targetResourceGroupName': ?targetResourceGroupName,
      'targetResourceName': ?targetResourceName,
    };
  }

  factory VirtualNetworkResourceSettings.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkResourceSettings(
      addressSpace: (() {
        final guardedValue = map['addressSpace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      dnsServers: (() {
        final guardedValue = map['dnsServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      enableDdosProtection: (() {
        final guardedValue = map['enableDdosProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      subnets: (() {
        final guardedValue = map['subnets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubnetResourceSettings>(
            guardedValue,
            (value) => SubnetResourceSettings.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetResourceGroupName: (() {
        final guardedValue = map['targetResourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetResourceName: (() {
        final guardedValue = map['targetResourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
