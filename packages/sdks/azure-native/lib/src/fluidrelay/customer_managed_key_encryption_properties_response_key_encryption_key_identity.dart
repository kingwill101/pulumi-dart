// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
class CustomerManagedKeyEncryptionPropertiesResponseKeyEncryptionKeyIdentity {
  /// Values can be SystemAssigned or UserAssigned
  final pulumi.Input<String>? identityType;
  /// user assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity.
  final pulumi.Input<String>? userAssignedIdentityResourceId;

  /// Creates a new [CustomerManagedKeyEncryptionPropertiesResponseKeyEncryptionKeyIdentity].
  /// [identityType] Values can be SystemAssigned or UserAssigned
  /// [userAssignedIdentityResourceId] user assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity.
  CustomerManagedKeyEncryptionPropertiesResponseKeyEncryptionKeyIdentity({
    this.identityType,
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityType': ?identityType,
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory CustomerManagedKeyEncryptionPropertiesResponseKeyEncryptionKeyIdentity.fromMap(Map<String, dynamic> map) {
    return CustomerManagedKeyEncryptionPropertiesResponseKeyEncryptionKeyIdentity(
      identityType: map['identityType'] == null ? null : (map['identityType']! as String).input(),
      userAssignedIdentityResourceId: map['userAssignedIdentityResourceId'] == null ? null : (map['userAssignedIdentityResourceId']! as String).input(),
    );
  }
}

