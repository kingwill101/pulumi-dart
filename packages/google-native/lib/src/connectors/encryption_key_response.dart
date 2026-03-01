// ignore_for_file: unused_element, unnecessary_cast

/// Encryption Key value.
class EncryptionKeyResponse {
  /// The [KMS key name] with which the content of the Operation is encrypted. The expected format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`. Will be empty string if google managed.
  final String kmsKeyName;

  /// Type.
  final String type;

  /// Creates a new [EncryptionKeyResponse].
  /// [kmsKeyName] The [KMS key name] with which the content of the Operation is encrypted. The expected format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`. Will be empty string if google managed.
  /// [type] Type.
  EncryptionKeyResponse({required this.kmsKeyName, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': kmsKeyName, 'type': type};
  }

  factory EncryptionKeyResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionKeyResponse(
      kmsKeyName: map['kmsKeyName'] as String,
      type: map['type'] as String,
    );
  }
}
