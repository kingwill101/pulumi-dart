// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
class EncryptionPropertiesIdentityResponse {
  /// User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/a0a0a0a0-bbbb-cccd-dddd-e1e1e1e1e1e1/resourceGroups/&lt;resource group&gt;/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId.
  final pulumi.Input<String?>? resourceId;
  /// Managed identity type to use for accessing encryption key Url.
  final pulumi.Input<String?>? type;

  /// Creates a new [EncryptionPropertiesIdentityResponse].
  /// [resourceId] User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/a0a0a0a0-bbbb-cccd-dddd-e1e1e1e1e1e1/resourceGroups/&lt;resource group&gt;/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId.
  /// [type] Managed identity type to use for accessing encryption key Url.
  const EncryptionPropertiesIdentityResponse({
    this.resourceId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'type': ?type,
    };
  }

  factory EncryptionPropertiesIdentityResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertiesIdentityResponse(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
