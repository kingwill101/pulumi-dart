// ignore_for_file: unused_element, unnecessary_cast

/// Encryption configuration (i.e. CMEK).
class EncryptionConfigResponse {
  /// Name of the CMEK key in KMS (input parameter).
  final String kmsKeyName;

  /// Full name and version of the CMEK key currently in use to encrypt Looker data. Format: `projects/{project}/locations/{location}/keyRings/{ring}/cryptoKeys/{key}/cryptoKeyVersions/{version}`. Empty if CMEK is not configured in this instance.
  final String kmsKeyNameVersion;

  /// Status of the CMEK key.
  final String kmsKeyState;

  /// Creates a new [EncryptionConfigResponse].
  /// [kmsKeyName] Name of the CMEK key in KMS (input parameter).
  /// [kmsKeyNameVersion] Full name and version of the CMEK key currently in use to encrypt Looker data. Format: `projects/{project}/locations/{location}/keyRings/{ring}/cryptoKeys/{key}/cryptoKeyVersions/{version}`. Empty if CMEK is not configured in this instance.
  /// [kmsKeyState] Status of the CMEK key.
  EncryptionConfigResponse({
    required this.kmsKeyName,
    required this.kmsKeyNameVersion,
    required this.kmsKeyState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
      'kmsKeyNameVersion': kmsKeyNameVersion,
      'kmsKeyState': kmsKeyState,
    };
  }

  factory EncryptionConfigResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponse(
      kmsKeyName: map['kmsKeyName'] as String,
      kmsKeyNameVersion: map['kmsKeyNameVersion'] as String,
      kmsKeyState: map['kmsKeyState'] as String,
    );
  }
}
