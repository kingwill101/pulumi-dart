// ignore_for_file: unused_element, unnecessary_cast

import 'user_assigned_identity_properties_response.dart';

/// Properties to configure keyVault Properties
class KeyVaultPropertiesResponse {
  final UserAssignedIdentityPropertiesResponse? identity;
  /// Name of the Key from KeyVault
  final String? keyName;
  /// Uri of KeyVault
  final String? keyVaultUri;
  /// Key Version
  final String? keyVersion;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [identity] Optional.
  /// [keyName] Name of the Key from KeyVault
  /// [keyVaultUri] Uri of KeyVault
  /// [keyVersion] Key Version
  KeyVaultPropertiesResponse({
    this.identity,
    this.keyName,
    this.keyVaultUri,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity == null ? null : identity!.toMap(),
      'keyName': ?keyName,
      'keyVaultUri': ?keyVaultUri,
      'keyVersion': ?keyVersion,
    };
  }

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      identity: map['identity'] == null ? null : UserAssignedIdentityPropertiesResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      keyVaultUri: map['keyVaultUri'] == null ? null : map['keyVaultUri'] as String,
      keyVersion: map['keyVersion'] == null ? null : map['keyVersion'] as String,
    );
  }
}

