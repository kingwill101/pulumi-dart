// ignore_for_file: unused_element, unnecessary_cast


/// Authentication setting properties for Azure Managed Identity
class ManagedIdentityAuthenticationSettingPropertiesResponse {
  /// Supported kinds of authentication settings as discriminator
  /// Expected value is 'ManagedIdentity'.
  final String authenticationKind;
  /// Display name
  final String? displayName;
  /// Name of the managed identity to use. Either 'SystemAssigned' or the resourceId of a user-assigned identity.
  final String managedIdentityName;
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [ManagedIdentityAuthenticationSettingPropertiesResponse].
  /// [authenticationKind] Supported kinds of authentication settings as discriminator
  /// [displayName] Display name
  /// [managedIdentityName] Name of the managed identity to use. Either 'SystemAssigned' or the resourceId of a user-assigned identity.
  /// [provisioningState] The status of the last operation.
  ManagedIdentityAuthenticationSettingPropertiesResponse({
    required this.authenticationKind,
    this.displayName,
    required this.managedIdentityName,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationKind': authenticationKind,
      'displayName': ?displayName,
      'managedIdentityName': managedIdentityName,
      'provisioningState': provisioningState,
    };
  }

  factory ManagedIdentityAuthenticationSettingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityAuthenticationSettingPropertiesResponse(
      authenticationKind: map['authenticationKind'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      managedIdentityName: map['managedIdentityName'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

