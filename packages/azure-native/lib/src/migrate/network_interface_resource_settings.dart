// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nic_ip_configuration_resource_settings.dart';

/// Defines the network interface resource settings.
class NetworkInterfaceResourceSettings {
  /// Gets or sets a value indicating whether accelerated networking is enabled.
  final bool? enableAcceleratedNetworking;
  /// Gets or sets the IP configurations of the NIC.
  final List<NicIpConfigurationResourceSettings>? ipConfigurations;
  /// The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// Expected value is 'Microsoft.Network/networkInterfaces'.
  final String resourceType;
  /// Gets or sets the Resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the target resource group name.
  final String? targetResourceGroupName;
  /// Gets or sets the target Resource name.
  final String? targetResourceName;

  /// Creates a new [NetworkInterfaceResourceSettings].
  /// [enableAcceleratedNetworking] Gets or sets a value indicating whether accelerated networking is enabled.
  /// [ipConfigurations] Gets or sets the IP configurations of the NIC.
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [tags] Gets or sets the Resource tags.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  NetworkInterfaceResourceSettings({
    this.enableAcceleratedNetworking,
    this.ipConfigurations,
    required this.resourceType,
    this.tags,
    this.targetResourceGroupName,
    this.targetResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAcceleratedNetworking': ?enableAcceleratedNetworking,
      'ipConfigurations': ?ipConfigurations == null ? null : pulumi.Input.encodeList<NicIpConfigurationResourceSettings, Map<String, dynamic>>(ipConfigurations!, (value) => value.toMap()),
      'resourceType': resourceType,
      'tags': ?tags,
      'targetResourceGroupName': ?targetResourceGroupName,
      'targetResourceName': ?targetResourceName,
    };
  }

  factory NetworkInterfaceResourceSettings.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceResourceSettings(
      enableAcceleratedNetworking: map['enableAcceleratedNetworking'] == null ? null : map['enableAcceleratedNetworking'] as bool,
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Input.decodeList<NicIpConfigurationResourceSettings>(map['ipConfigurations'], (value) => NicIpConfigurationResourceSettings.fromMap((value as Map).cast<String, dynamic>())),
      resourceType: map['resourceType'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetResourceGroupName: map['targetResourceGroupName'] == null ? null : map['targetResourceGroupName'] as String,
      targetResourceName: map['targetResourceName'] == null ? null : map['targetResourceName'] as String,
    );
  }
}

