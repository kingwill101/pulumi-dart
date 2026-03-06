// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Vault properties.
class VaultModelPropertiesResponse {
  /// Gets or sets the provisioning state of the vault.
  final pulumi.Input<String> provisioningState;
  /// Gets or sets the service resource Id.
  final pulumi.Input<String> serviceResourceId;
  /// Gets or sets the type of vault.
  final pulumi.Input<String>? vaultType;

  /// Creates a new [VaultModelPropertiesResponse].
  /// [provisioningState] Gets or sets the provisioning state of the vault.
  /// [serviceResourceId] Gets or sets the service resource Id.
  /// [vaultType] Gets or sets the type of vault.
  const VaultModelPropertiesResponse({
    required this.provisioningState,
    required this.serviceResourceId,
    this.vaultType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'serviceResourceId': serviceResourceId,
      'vaultType': ?vaultType,
    };
  }

  factory VaultModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VaultModelPropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      serviceResourceId: pulumi.Input.fromValue(map['serviceResourceId'] as String),
      vaultType: (() { final guardedValue = map['vaultType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

