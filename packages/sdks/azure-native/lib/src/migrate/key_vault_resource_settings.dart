// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the key vault resource settings.
class KeyVaultResourceSettings {
  /// The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// Expected value is 'Microsoft.KeyVault/vaults'.
  final pulumi.Input<String> resourceType;
  /// Gets or sets the target resource group name.
  final pulumi.Input<String>? targetResourceGroupName;
  /// Gets or sets the target Resource name.
  final pulumi.Input<String>? targetResourceName;

  /// Creates a new [KeyVaultResourceSettings].
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  KeyVaultResourceSettings({
    required this.resourceType,
    this.targetResourceGroupName,
    this.targetResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceType': resourceType,
      'targetResourceGroupName': ?targetResourceGroupName,
      'targetResourceName': ?targetResourceName,
    };
  }

  factory KeyVaultResourceSettings.fromMap(Map<String, dynamic> map) {
    return KeyVaultResourceSettings(
      resourceType: (map['resourceType'] as String).input(),
      targetResourceGroupName: map['targetResourceGroupName'] == null ? null : (map['targetResourceGroupName']! as String).input(),
      targetResourceName: map['targetResourceName'] == null ? null : (map['targetResourceName']! as String).input(),
    );
  }
}

