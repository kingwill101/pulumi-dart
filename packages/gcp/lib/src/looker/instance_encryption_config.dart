// ignore_for_file: unused_element, unnecessary_cast

class InstanceEncryptionConfig {
  /// Name of the customer managed encryption key (CMEK) in KMS.
  final String? kmsKeyName;

  /// (Output)
  /// Full name and version of the CMEK key currently in use to encrypt Looker data.
  final String? kmsKeyNameVersion;

  /// (Output)
  /// Status of the customer managed encryption key (CMEK) in KMS.
  final String? kmsKeyState;

  /// Creates a new [InstanceEncryptionConfig].
  /// [kmsKeyName] Name of the customer managed encryption key (CMEK) in KMS.
  /// [kmsKeyNameVersion] (Output)
  /// [kmsKeyState] (Output)
  InstanceEncryptionConfig({
    this.kmsKeyName,
    this.kmsKeyNameVersion,
    this.kmsKeyState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final kmsKeyNameVersionValue = kmsKeyNameVersion;
    if (kmsKeyNameVersionValue != null) {
      map['kmsKeyNameVersion'] = kmsKeyNameVersionValue;
    }
    final kmsKeyStateValue = kmsKeyState;
    if (kmsKeyStateValue != null) {
      map['kmsKeyState'] = kmsKeyStateValue;
    }
    return map;
  }

  factory InstanceEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return InstanceEncryptionConfig(
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      kmsKeyNameVersion: map['kmsKeyNameVersion'] == null
          ? null
          : map['kmsKeyNameVersion'] as String,
      kmsKeyState:
          map['kmsKeyState'] == null ? null : map['kmsKeyState'] as String,
    );
  }
}
