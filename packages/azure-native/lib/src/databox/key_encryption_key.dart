// ignore_for_file: unused_element, unnecessary_cast

import 'identity_properties.dart';

/// Encryption key containing details about key to encrypt different keys.
class KeyEncryptionKey {
  /// Managed identity properties used for key encryption.
  final IdentityProperties? identityProperties;
  /// Type of encryption key used for key encryption.
  final String kekType;
  /// Key encryption key. It is required in case of Customer managed KekType.
  final String? kekUrl;
  /// Kek vault resource id. It is required in case of Customer managed KekType.
  final String? kekVaultResourceID;

  /// Creates a new [KeyEncryptionKey].
  /// [identityProperties] Managed identity properties used for key encryption.
  /// [kekType] Type of encryption key used for key encryption.
  /// [kekUrl] Key encryption key. It is required in case of Customer managed KekType.
  /// [kekVaultResourceID] Kek vault resource id. It is required in case of Customer managed KekType.
  KeyEncryptionKey({
    this.identityProperties,
    required this.kekType,
    this.kekUrl,
    this.kekVaultResourceID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProperties': ?identityProperties == null ? null : identityProperties!.toMap(),
      'kekType': kekType,
      'kekUrl': ?kekUrl,
      'kekVaultResourceID': ?kekVaultResourceID,
    };
  }

  factory KeyEncryptionKey.fromMap(Map<String, dynamic> map) {
    return KeyEncryptionKey(
      identityProperties: map['identityProperties'] == null ? null : IdentityProperties.fromMap((map['identityProperties'] as Map).cast<String, dynamic>()),
      kekType: map['kekType'] as String,
      kekUrl: map['kekUrl'] == null ? null : map['kekUrl'] as String,
      kekVaultResourceID: map['kekVaultResourceID'] == null ? null : map['kekVaultResourceID'] as String,
    );
  }
}

