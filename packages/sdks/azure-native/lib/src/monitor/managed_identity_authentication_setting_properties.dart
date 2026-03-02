// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication setting properties for Azure Managed Identity
class ManagedIdentityAuthenticationSettingProperties {
  /// Supported kinds of authentication settings as discriminator
  /// Expected value is 'ManagedIdentity'.
  final pulumi.Input<String> authenticationKind;
  /// Display name
  final pulumi.Input<String>? displayName;
  /// Name of the managed identity to use. Either 'SystemAssigned' or the resourceId of a user-assigned identity.
  final pulumi.Input<String> managedIdentityName;

  /// Creates a new [ManagedIdentityAuthenticationSettingProperties].
  /// [authenticationKind] Supported kinds of authentication settings as discriminator
  /// [displayName] Display name
  /// [managedIdentityName] Name of the managed identity to use. Either 'SystemAssigned' or the resourceId of a user-assigned identity.
  ManagedIdentityAuthenticationSettingProperties({
    required this.authenticationKind,
    this.displayName,
    required this.managedIdentityName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationKind': authenticationKind,
      'displayName': ?displayName,
      'managedIdentityName': managedIdentityName,
    };
  }

  factory ManagedIdentityAuthenticationSettingProperties.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityAuthenticationSettingProperties(
      authenticationKind: (map['authenticationKind'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      managedIdentityName: (map['managedIdentityName'] as String).input(),
    );
  }
}

