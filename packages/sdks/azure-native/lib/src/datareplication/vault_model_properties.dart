// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Vault properties.
class VaultModelProperties {
  /// Gets or sets the type of vault.
  final pulumi.Input<String>? vaultType;

  /// Creates a new [VaultModelProperties].
  /// [vaultType] Gets or sets the type of vault.
  VaultModelProperties({
    this.vaultType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vaultType': ?vaultType,
    };
  }

  factory VaultModelProperties.fromMap(Map<String, dynamic> map) {
    return VaultModelProperties(
      vaultType: map['vaultType'] == null ? null : (map['vaultType'] as String).input(),
    );
  }
}

