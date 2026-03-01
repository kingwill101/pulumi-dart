// ignore_for_file: unused_element, unnecessary_cast


/// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
class CustomerManagedKeyEncryptionKeyEncryptionKeyIdentity {
  /// delegated identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity and userAssignedIdentity - internal use only.
  final String? delegatedIdentityClientId;
  /// Values can be systemAssignedIdentity or userAssignedIdentity
  final String? identityType;
  /// user assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity and delegatedResourceIdentity.
  final String? userAssignedIdentityResourceId;

  /// Creates a new [CustomerManagedKeyEncryptionKeyEncryptionKeyIdentity].
  /// [delegatedIdentityClientId] delegated identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity and userAssignedIdentity - internal use only.
  /// [identityType] Values can be systemAssignedIdentity or userAssignedIdentity
  /// [userAssignedIdentityResourceId] user assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity and delegatedResourceIdentity.
  CustomerManagedKeyEncryptionKeyEncryptionKeyIdentity({
    this.delegatedIdentityClientId,
    this.identityType,
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegatedIdentityClientId': ?delegatedIdentityClientId,
      'identityType': ?identityType,
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory CustomerManagedKeyEncryptionKeyEncryptionKeyIdentity.fromMap(Map<String, dynamic> map) {
    return CustomerManagedKeyEncryptionKeyEncryptionKeyIdentity(
      delegatedIdentityClientId: map['delegatedIdentityClientId'] == null ? null : map['delegatedIdentityClientId'] as String,
      identityType: map['identityType'] == null ? null : map['identityType'] as String,
      userAssignedIdentityResourceId: map['userAssignedIdentityResourceId'] == null ? null : map['userAssignedIdentityResourceId'] as String,
    );
  }
}

