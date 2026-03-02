// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
class CustomerManagedKeyEncryptionResponseKeyEncryptionKeyIdentity {
  /// delegated identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity and userAssignedIdentity - internal use only.
  final pulumi.Input<String>? delegatedIdentityClientId;
  /// Values can be systemAssignedIdentity or userAssignedIdentity
  final pulumi.Input<String>? identityType;
  /// user assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity and delegatedResourceIdentity.
  final pulumi.Input<String>? userAssignedIdentityResourceId;

  /// Creates a new [CustomerManagedKeyEncryptionResponseKeyEncryptionKeyIdentity].
  /// [delegatedIdentityClientId] delegated identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity and userAssignedIdentity - internal use only.
  /// [identityType] Values can be systemAssignedIdentity or userAssignedIdentity
  /// [userAssignedIdentityResourceId] user assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity and delegatedResourceIdentity.
  CustomerManagedKeyEncryptionResponseKeyEncryptionKeyIdentity({
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

  factory CustomerManagedKeyEncryptionResponseKeyEncryptionKeyIdentity.fromMap(Map<String, dynamic> map) {
    return CustomerManagedKeyEncryptionResponseKeyEncryptionKeyIdentity(
      delegatedIdentityClientId: map['delegatedIdentityClientId'] == null ? null : (map['delegatedIdentityClientId'] as String).input(),
      identityType: map['identityType'] == null ? null : (map['identityType'] as String).input(),
      userAssignedIdentityResourceId: map['userAssignedIdentityResourceId'] == null ? null : (map['userAssignedIdentityResourceId'] as String).input(),
    );
  }
}

