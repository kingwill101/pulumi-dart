// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
class EncryptionResponseKeyEncryptionKeyIdentity {
  /// delegated identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/&lt;resource group&gt;/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity and userAssignedIdentity - internal use only.
  final pulumi.Input<String>? delegatedIdentityClientId;

  /// application client identity to use for accessing key encryption key Url in a different tenant. Ex: f83c6b1b-4d34-47e4-bb34-9d83df58b540
  final pulumi.Input<String>? federatedClientId;

  /// The type of identity to use. Values can be systemAssignedIdentity, userAssignedIdentity, or delegatedResourceIdentity.
  final pulumi.Input<String>? identityType;

  /// User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/&lt;resource group&gt;/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity.
  final pulumi.Input<String>? userAssignedIdentityResourceId;

  /// Creates a new [EncryptionResponseKeyEncryptionKeyIdentity].
  /// [delegatedIdentityClientId] delegated identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/&lt;resource group&gt;/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity and userAssignedIdentity - internal use only.
  /// [federatedClientId] application client identity to use for accessing key encryption key Url in a different tenant. Ex: f83c6b1b-4d34-47e4-bb34-9d83df58b540
  /// [identityType] The type of identity to use. Values can be systemAssignedIdentity, userAssignedIdentity, or delegatedResourceIdentity.
  /// [userAssignedIdentityResourceId] User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/&lt;resource group&gt;/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity.
  EncryptionResponseKeyEncryptionKeyIdentity({
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

  factory EncryptionResponseKeyEncryptionKeyIdentity.fromMap(
    Map<String, dynamic> map,
  ) {
    return EncryptionResponseKeyEncryptionKeyIdentity(
      delegatedIdentityClientId: (() {
        final guardedValue = map['delegatedIdentityClientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      federatedClientId: (() {
        final guardedValue = map['federatedClientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identityType: (() {
        final guardedValue = map['identityType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userAssignedIdentityResourceId: (() {
        final guardedValue = map['userAssignedIdentityResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
