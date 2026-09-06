// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the public IP address resource settings.
class PublicIPAddressResourceSettingsResponse {
  /// Gets or sets the domain name label.
  final pulumi.Input<String?>? domainNameLabel;
  /// Gets or sets the fully qualified domain name.
  final pulumi.Input<String?>? fqdn;
  /// Gets or sets public IP allocation method.
  final pulumi.Input<String?>? publicIpAllocationMethod;
  /// The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// Expected value is 'Microsoft.Network/publicIPAddresses'.
  final pulumi.Input<String> resourceType;
  /// Gets or sets public IP sku.
  final pulumi.Input<String?>? sku;
  /// Gets or sets the Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Gets or sets the target resource group name.
  final pulumi.Input<String?>? targetResourceGroupName;
  /// Gets or sets the target Resource name.
  final pulumi.Input<String?>? targetResourceName;
  /// Gets or sets public IP zones.
  final pulumi.Input<String?>? zones;

  /// Creates a new [PublicIPAddressResourceSettingsResponse].
  /// [domainNameLabel] Gets or sets the domain name label.
  /// [fqdn] Gets or sets the fully qualified domain name.
  /// [publicIpAllocationMethod] Gets or sets public IP allocation method.
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [sku] Gets or sets public IP sku.
  /// [tags] Gets or sets the Resource tags.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  /// [zones] Gets or sets public IP zones.
  const PublicIPAddressResourceSettingsResponse({
    this.domainNameLabel,
    this.fqdn,
    this.publicIpAllocationMethod,
    required this.resourceType,
    this.sku,
    this.tags,
    this.targetResourceGroupName,
    this.targetResourceName,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNameLabel': ?domainNameLabel,
      'fqdn': ?fqdn,
      'publicIpAllocationMethod': ?publicIpAllocationMethod,
      'resourceType': resourceType,
      'sku': ?sku,
      'tags': ?tags,
      'targetResourceGroupName': ?targetResourceGroupName,
      'targetResourceName': ?targetResourceName,
      'zones': ?zones,
    };
  }

  factory PublicIPAddressResourceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressResourceSettingsResponse(
      domainNameLabel: (() { final guardedValue = map['domainNameLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAllocationMethod: (() { final guardedValue = map['publicIpAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetResourceGroupName: (() { final guardedValue = map['targetResourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourceName: (() { final guardedValue = map['targetResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
