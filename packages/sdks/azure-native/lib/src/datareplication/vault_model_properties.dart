// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Vault properties.
class VaultModelProperties {
  /// Gets or sets the type of vault.
  final pulumi.Input<dynamic>? vaultType;

  /// Creates a new [VaultModelProperties].
  /// [vaultType] Gets or sets the type of vault.
  const VaultModelProperties({
    this.vaultType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vaultType': ?vaultType,
    };
  }

  factory VaultModelProperties.fromMap(Map<String, dynamic> map) {
    return VaultModelProperties(
      vaultType: (() { final guardedValue = map['vaultType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
