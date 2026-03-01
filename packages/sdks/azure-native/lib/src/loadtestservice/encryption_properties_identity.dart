// ignore_for_file: unused_element, unnecessary_cast


/// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
class EncryptionPropertiesIdentity {
  /// User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/a0a0a0a0-bbbb-cccd-dddd-e1e1e1e1e1e1/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId.
  final String? resourceId;
  /// Managed identity type to use for accessing encryption key Url.
  final String? type;

  /// Creates a new [EncryptionPropertiesIdentity].
  /// [resourceId] User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/a0a0a0a0-bbbb-cccd-dddd-e1e1e1e1e1e1/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId.
  /// [type] Managed identity type to use for accessing encryption key Url.
  EncryptionPropertiesIdentity({
    this.resourceId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'type': ?type,
    };
  }

  factory EncryptionPropertiesIdentity.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertiesIdentity(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

