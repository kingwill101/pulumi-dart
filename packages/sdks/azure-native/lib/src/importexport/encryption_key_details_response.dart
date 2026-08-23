// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the encryption key properties
class EncryptionKeyDetailsResponse {
  /// The type of kek encryption key
  final pulumi.Input<String>? kekType;
  /// Specifies the url for kek encryption key.
  final pulumi.Input<String>? kekUrl;
  /// Specifies the keyvault resource id for kek encryption key.
  final pulumi.Input<String>? kekVaultResourceID;

  /// Creates a new [EncryptionKeyDetailsResponse].
  /// [kekType] The type of kek encryption key
  /// [kekUrl] Specifies the url for kek encryption key.
  /// [kekVaultResourceID] Specifies the keyvault resource id for kek encryption key.
  const EncryptionKeyDetailsResponse({
    this.kekType,
    this.kekUrl,
    this.kekVaultResourceID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kekType': ?kekType,
      'kekUrl': ?kekUrl,
      'kekVaultResourceID': ?kekVaultResourceID,
    };
  }

  factory EncryptionKeyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionKeyDetailsResponse(
      kekType: (() { final guardedValue = map['kekType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kekUrl: (() { final guardedValue = map['kekUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kekVaultResourceID: (() { final guardedValue = map['kekVaultResourceID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
