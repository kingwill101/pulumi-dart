// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_password_identity.dart';
import 'secret_password_key_vault_properties.dart';

/// Access password from Azure KeyVault Secrets to connect Active Directory
class SecretPassword {
  /// Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final pulumi.Input<SecretPasswordIdentity>? identity;

  /// Properties provided by KeyVault.
  final pulumi.Input<SecretPasswordKeyVaultProperties>? keyVaultProperties;

  /// Creates a new [SecretPassword].
  /// [identity] Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  /// [keyVaultProperties] Properties provided by KeyVault.
  SecretPassword({this.identity, this.keyVaultProperties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            SecretPasswordIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'keyVaultProperties':
          ?pulumi.Input.mapOptionalInputValue<
            SecretPasswordKeyVaultProperties,
            Map<String, dynamic>
          >(keyVaultProperties, (value) => value.toMap()),
    };
  }

  factory SecretPassword.fromMap(Map<String, dynamic> map) {
    return SecretPassword(
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecretPasswordIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      keyVaultProperties: (() {
        final guardedValue = map['keyVaultProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecretPasswordKeyVaultProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
