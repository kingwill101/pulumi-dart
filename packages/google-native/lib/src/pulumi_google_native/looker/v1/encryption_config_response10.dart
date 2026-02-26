// ignore_for_file: unused_element, unnecessary_cast

/// Encryption configuration (i.e. CMEK).
class EncryptionConfigResponse10 {
  /// Name of the CMEK key in KMS (input parameter).
  final String kmsKeyName;

  /// Full name and version of the CMEK key currently in use to encrypt Looker data. Format: `projects/{project}/locations/{location}/keyRings/{ring}/cryptoKeys/{key}/cryptoKeyVersions/{version}`. Empty if CMEK is not configured in this instance.
  final String kmsKeyNameVersion;

  /// Status of the CMEK key.
  final String kmsKeyState;

  EncryptionConfigResponse10({
    required this.kmsKeyName,
    required this.kmsKeyNameVersion,
    required this.kmsKeyState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    map['kmsKeyNameVersion'] = kmsKeyNameVersion;
    map['kmsKeyState'] = kmsKeyState;
    return map;
  }

  factory EncryptionConfigResponse10.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponse10(
      kmsKeyName: map['kmsKeyName'] as String,
      kmsKeyNameVersion: map['kmsKeyNameVersion'] as String,
      kmsKeyState: map['kmsKeyState'] as String,
    );
  }
}
