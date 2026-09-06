// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication setting properties for Azure Managed Identity
class ManagedIdentityAuthenticationSettingPropertiesResponse {
  /// Supported kinds of authentication settings as discriminator
  /// Expected value is 'ManagedIdentity'.
  final pulumi.Input<String> authenticationKind;
  /// Display name
  final pulumi.Input<String?>? displayName;
  /// Name of the managed identity to use. Either 'SystemAssigned' or the resourceId of a user-assigned identity.
  final pulumi.Input<String> managedIdentityName;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ManagedIdentityAuthenticationSettingPropertiesResponse].
  /// [authenticationKind] Supported kinds of authentication settings as discriminator
  /// [displayName] Display name
  /// [managedIdentityName] Name of the managed identity to use. Either 'SystemAssigned' or the resourceId of a user-assigned identity.
  /// [provisioningState] The status of the last operation.
  const ManagedIdentityAuthenticationSettingPropertiesResponse({
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
      authenticationKind: pulumi.Input.fromValue(map['authenticationKind'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedIdentityName: pulumi.Input.fromValue(map['managedIdentityName'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
