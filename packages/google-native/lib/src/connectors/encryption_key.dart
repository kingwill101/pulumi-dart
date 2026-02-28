// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_key_type.dart';

/// Encryption Key value.
class EncryptionKey {
  /// The [KMS key name] with which the content of the Operation is encrypted. The expected format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`. Will be empty string if google managed.
  final String? kmsKeyName;

  /// Type.
  final EncryptionKeyType? type;

  /// Creates a new [EncryptionKey].
  /// [kmsKeyName] The [KMS key name] with which the content of the Operation is encrypted. The expected format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`. Will be empty string if google managed.
  /// [type] Type.
  EncryptionKey({
    this.kmsKeyName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory EncryptionKey.fromMap(Map<String, dynamic> map) {
    return EncryptionKey(
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      type: map['type'] == null
          ? null
          : EncryptionKeyType.fromValue(map['type'] as String),
    );
  }
}
