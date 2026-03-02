// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_properties.dart';

/// Encryption key containing details about key to encrypt different keys.
class KeyEncryptionKey {
  /// Managed identity properties used for key encryption.
  final pulumi.Input<IdentityProperties>? identityProperties;
  /// Type of encryption key used for key encryption.
  final pulumi.Input<String> kekType;
  /// Key encryption key. It is required in case of Customer managed KekType.
  final pulumi.Input<String>? kekUrl;
  /// Kek vault resource id. It is required in case of Customer managed KekType.
  final pulumi.Input<String>? kekVaultResourceID;

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
      'identityProperties': ?pulumi.Input.mapOptionalInputValue<IdentityProperties, Map<String, dynamic>>(identityProperties, (value) => value.toMap()),
      'kekType': kekType,
      'kekUrl': ?kekUrl,
      'kekVaultResourceID': ?kekVaultResourceID,
    };
  }

  factory KeyEncryptionKey.fromMap(Map<String, dynamic> map) {
    return KeyEncryptionKey(
      identityProperties: map['identityProperties'] == null ? null : (IdentityProperties.fromMap((map['identityProperties'] as Map).cast<String, dynamic>())).input(),
      kekType: (map['kekType'] as String).input(),
      kekUrl: map['kekUrl'] == null ? null : (map['kekUrl'] as String).input(),
      kekVaultResourceID: map['kekVaultResourceID'] == null ? null : (map['kekVaultResourceID'] as String).input(),
    );
  }
}

