// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_properties_response_identity.dart';
import 'key_vault_properties_response.dart';

/// The encryption settings for automation account
class EncryptionPropertiesResponse {
  /// User identity used for CMK.
  final pulumi.Input<EncryptionPropertiesResponseIdentity>? identity;
  /// Encryption Key Source
  final pulumi.Input<String>? keySource;
  /// Key vault properties.
  final pulumi.Input<KeyVaultPropertiesResponse>? keyVaultProperties;

  /// Creates a new [EncryptionPropertiesResponse].
  /// [identity] User identity used for CMK.
  /// [keySource] Encryption Key Source
  /// [keyVaultProperties] Key vault properties.
  EncryptionPropertiesResponse({
    this.identity,
    this.keySource,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<EncryptionPropertiesResponseIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keySource': ?keySource,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultPropertiesResponse, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
    };
  }

  factory EncryptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertiesResponse(
      identity: map['identity'] == null ? null : (EncryptionPropertiesResponseIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      keySource: map['keySource'] == null ? null : (map['keySource']! as String).input(),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : (KeyVaultPropertiesResponse.fromMap((map['keyVaultProperties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

