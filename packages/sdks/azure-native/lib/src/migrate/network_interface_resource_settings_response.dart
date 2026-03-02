// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nic_ip_configuration_resource_settings_response.dart';

/// Defines the network interface resource settings.
class NetworkInterfaceResourceSettingsResponse {
  /// Gets or sets a value indicating whether accelerated networking is enabled.
  final pulumi.Input<bool>? enableAcceleratedNetworking;
  /// Gets or sets the IP configurations of the NIC.
  final pulumi.Input<List<NicIpConfigurationResourceSettingsResponse>>? ipConfigurations;
  /// The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// Expected value is 'Microsoft.Network/networkInterfaces'.
  final pulumi.Input<String> resourceType;
  /// Gets or sets the Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Gets or sets the target resource group name.
  final pulumi.Input<String>? targetResourceGroupName;
  /// Gets or sets the target Resource name.
  final pulumi.Input<String>? targetResourceName;

  /// Creates a new [NetworkInterfaceResourceSettingsResponse].
  /// [enableAcceleratedNetworking] Gets or sets a value indicating whether accelerated networking is enabled.
  /// [ipConfigurations] Gets or sets the IP configurations of the NIC.
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [tags] Gets or sets the Resource tags.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  NetworkInterfaceResourceSettingsResponse({
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
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<NicIpConfigurationResourceSettingsResponse>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<NicIpConfigurationResourceSettingsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceType': resourceType,
      'tags': ?tags,
      'targetResourceGroupName': ?targetResourceGroupName,
      'targetResourceName': ?targetResourceName,
    };
  }

  factory NetworkInterfaceResourceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceResourceSettingsResponse(
      enableAcceleratedNetworking: map['enableAcceleratedNetworking'] == null ? null : (map['enableAcceleratedNetworking']! as bool).input(),
      ipConfigurations: map['ipConfigurations'] == null ? null : (pulumi.Input.decodeList<NicIpConfigurationResourceSettingsResponse>(map['ipConfigurations']!, (value) => NicIpConfigurationResourceSettingsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceType: (map['resourceType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      targetResourceGroupName: map['targetResourceGroupName'] == null ? null : (map['targetResourceGroupName']! as String).input(),
      targetResourceName: map['targetResourceName'] == null ? null : (map['targetResourceName']! as String).input(),
    );
  }
}

