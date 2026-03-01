// ignore_for_file: unused_element, unnecessary_cast


/// Vault properties.
class VaultModelPropertiesResponse {
  /// Gets or sets the provisioning state of the vault.
  final String provisioningState;
  /// Gets or sets the service resource Id.
  final String serviceResourceId;
  /// Gets or sets the type of vault.
  final String? vaultType;

  /// Creates a new [VaultModelPropertiesResponse].
  /// [provisioningState] Gets or sets the provisioning state of the vault.
  /// [serviceResourceId] Gets or sets the service resource Id.
  /// [vaultType] Gets or sets the type of vault.
  VaultModelPropertiesResponse({
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
      provisioningState: map['provisioningState'] as String,
      serviceResourceId: map['serviceResourceId'] as String,
      vaultType: map['vaultType'] == null ? null : map['vaultType'] as String,
    );
  }
}

