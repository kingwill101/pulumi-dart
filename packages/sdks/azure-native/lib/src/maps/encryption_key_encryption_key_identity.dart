// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
class EncryptionKeyEncryptionKeyIdentity {
  /// delegated identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity and userAssignedIdentity - internal use only.
  final pulumi.Input<String>? delegatedIdentityClientId;
  /// application client identity to use for accessing key encryption key Url in a different tenant. Ex: f83c6b1b-4d34-47e4-bb34-9d83df58b540
  final pulumi.Input<String>? federatedClientId;
  /// The type of identity to use. Values can be systemAssignedIdentity, userAssignedIdentity, or delegatedResourceIdentity.
  final pulumi.Input<String>? identityType;
  /// User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity.
  final pulumi.Input<String>? userAssignedIdentityResourceId;

  /// Creates a new [EncryptionKeyEncryptionKeyIdentity].
  /// [delegatedIdentityClientId] delegated identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity and userAssignedIdentity - internal use only.
  /// [federatedClientId] application client identity to use for accessing key encryption key Url in a different tenant. Ex: f83c6b1b-4d34-47e4-bb34-9d83df58b540
  /// [identityType] The type of identity to use. Values can be systemAssignedIdentity, userAssignedIdentity, or delegatedResourceIdentity.
  /// [userAssignedIdentityResourceId] User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity.
  EncryptionKeyEncryptionKeyIdentity({
    this.delegatedIdentityClientId,
    this.federatedClientId,
    this.identityType,
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegatedIdentityClientId': ?delegatedIdentityClientId,
      'federatedClientId': ?federatedClientId,
      'identityType': ?identityType,
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory EncryptionKeyEncryptionKeyIdentity.fromMap(Map<String, dynamic> map) {
    return EncryptionKeyEncryptionKeyIdentity(
      delegatedIdentityClientId: map['delegatedIdentityClientId'] == null ? null : (map['delegatedIdentityClientId']! as String).input(),
      federatedClientId: map['federatedClientId'] == null ? null : (map['federatedClientId']! as String).input(),
      identityType: map['identityType'] == null ? null : (map['identityType']! as String).input(),
      userAssignedIdentityResourceId: map['userAssignedIdentityResourceId'] == null ? null : (map['userAssignedIdentityResourceId']! as String).input(),
    );
  }
}

