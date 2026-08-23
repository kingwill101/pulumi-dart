// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmk_identity_type.dart';

/// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
class CustomerManagedKeyEncryptionPropertiesKeyEncryptionKeyIdentity {
  /// Values can be SystemAssigned or UserAssigned
  final pulumi.Input<CmkIdentityType>? identityType;
  /// user assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/&lt;resource group&gt;/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity.
  final pulumi.Input<String>? userAssignedIdentityResourceId;

  /// Creates a new [CustomerManagedKeyEncryptionPropertiesKeyEncryptionKeyIdentity].
  /// [identityType] Values can be SystemAssigned or UserAssigned
  /// [userAssignedIdentityResourceId] user assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/&lt;resource group&gt;/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity.
  const CustomerManagedKeyEncryptionPropertiesKeyEncryptionKeyIdentity({
    this.identityType,
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityType': ?pulumi.Input.mapOptionalInputValue<CmkIdentityType, String>(identityType, (value) => value.wireValue),
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory CustomerManagedKeyEncryptionPropertiesKeyEncryptionKeyIdentity.fromMap(Map<String, dynamic> map) {
    return CustomerManagedKeyEncryptionPropertiesKeyEncryptionKeyIdentity(
      identityType: (() { final guardedValue = map['identityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CmkIdentityType.fromValue(guardedValue as String)); })(),
      userAssignedIdentityResourceId: (() { final guardedValue = map['userAssignedIdentityResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
