// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_properties.dart';

/// Properties to configure keyVault Properties
class KeyVaultProperties {
  final pulumi.Input<UserAssignedIdentityProperties>? identity;
  /// Name of the Key from KeyVault
  final pulumi.Input<String>? keyName;
  /// Uri of KeyVault
  final pulumi.Input<String>? keyVaultUri;
  /// Key Version
  final pulumi.Input<String>? keyVersion;

  /// Creates a new [KeyVaultProperties].
  /// [identity] Optional.
  /// [keyName] Name of the Key from KeyVault
  /// [keyVaultUri] Uri of KeyVault
  /// [keyVersion] Key Version
  KeyVaultProperties({
    this.identity,
    this.keyName,
    this.keyVaultUri,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<UserAssignedIdentityProperties, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyName': ?keyName,
      'keyVaultUri': ?keyVaultUri,
      'keyVersion': ?keyVersion,
    };
  }

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      identity: map['identity'] == null ? null : (UserAssignedIdentityProperties.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      keyName: map['keyName'] == null ? null : (map['keyName'] as String).input(),
      keyVaultUri: map['keyVaultUri'] == null ? null : (map['keyVaultUri'] as String).input(),
      keyVersion: map['keyVersion'] == null ? null : (map['keyVersion'] as String).input(),
    );
  }
}

