// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_properties_response.dart';

/// Encryption key containing details about key to encrypt different keys.
class KeyEncryptionKeyResponse {
  /// Managed identity properties used for key encryption.
  final pulumi.Input<IdentityPropertiesResponse>? identityProperties;
  /// Type of encryption key used for key encryption.
  final pulumi.Input<String> kekType;
  /// Key encryption key. It is required in case of Customer managed KekType.
  final pulumi.Input<String>? kekUrl;
  /// Kek vault resource id. It is required in case of Customer managed KekType.
  final pulumi.Input<String>? kekVaultResourceID;

  /// Creates a new [KeyEncryptionKeyResponse].
  /// [identityProperties] Managed identity properties used for key encryption.
  /// [kekType] Type of encryption key used for key encryption.
  /// [kekUrl] Key encryption key. It is required in case of Customer managed KekType.
  /// [kekVaultResourceID] Kek vault resource id. It is required in case of Customer managed KekType.
  KeyEncryptionKeyResponse({
    this.identityProperties,
    required this.kekType,
    this.kekUrl,
    this.kekVaultResourceID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProperties': ?pulumi.Input.mapOptionalInputValue<IdentityPropertiesResponse, Map<String, dynamic>>(identityProperties, (value) => value.toMap()),
      'kekType': kekType,
      'kekUrl': ?kekUrl,
      'kekVaultResourceID': ?kekVaultResourceID,
    };
  }

  factory KeyEncryptionKeyResponse.fromMap(Map<String, dynamic> map) {
    return KeyEncryptionKeyResponse(
      identityProperties: map['identityProperties'] == null ? null : (IdentityPropertiesResponse.fromMap((map['identityProperties']! as Map).cast<String, dynamic>())).input(),
      kekType: (map['kekType'] as String).input(),
      kekUrl: map['kekUrl'] == null ? null : (map['kekUrl']! as String).input(),
      kekVaultResourceID: map['kekVaultResourceID'] == null ? null : (map['kekVaultResourceID']! as String).input(),
    );
  }
}

