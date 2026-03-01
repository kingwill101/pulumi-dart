// ignore_for_file: unused_element, unnecessary_cast


/// Defines the public IP address resource settings.
class PublicIPAddressResourceSettings {
  /// Gets or sets the domain name label.
  final String? domainNameLabel;
  /// Gets or sets the fully qualified domain name.
  final String? fqdn;
  /// Gets or sets public IP allocation method.
  final String? publicIpAllocationMethod;
  /// The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// Expected value is 'Microsoft.Network/publicIPAddresses'.
  final String resourceType;
  /// Gets or sets public IP sku.
  final String? sku;
  /// Gets or sets the Resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the target resource group name.
  final String? targetResourceGroupName;
  /// Gets or sets the target Resource name.
  final String? targetResourceName;
  /// Gets or sets public IP zones.
  final String? zones;

  /// Creates a new [PublicIPAddressResourceSettings].
  /// [domainNameLabel] Gets or sets the domain name label.
  /// [fqdn] Gets or sets the fully qualified domain name.
  /// [publicIpAllocationMethod] Gets or sets public IP allocation method.
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [sku] Gets or sets public IP sku.
  /// [tags] Gets or sets the Resource tags.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  /// [zones] Gets or sets public IP zones.
  PublicIPAddressResourceSettings({
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

  factory PublicIPAddressResourceSettings.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressResourceSettings(
      domainNameLabel: map['domainNameLabel'] == null ? null : map['domainNameLabel'] as String,
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      publicIpAllocationMethod: map['publicIpAllocationMethod'] == null ? null : map['publicIpAllocationMethod'] as String,
      resourceType: map['resourceType'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetResourceGroupName: map['targetResourceGroupName'] == null ? null : map['targetResourceGroupName'] as String,
      targetResourceName: map['targetResourceName'] == null ? null : map['targetResourceName'] as String,
      zones: map['zones'] == null ? null : map['zones'] as String,
    );
  }
}

