// ignore_for_file: unused_element, unnecessary_cast

/// Represents the encryption configuration for a transfer.
class EncryptionConfigurationBigquerydatatransferV1 {
  /// The name of the KMS key used for encrypting BigQuery data.
  final String? kmsKeyName;

  EncryptionConfigurationBigquerydatatransferV1({
    this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    return map;
  }

  factory EncryptionConfigurationBigquerydatatransferV1.fromMap(
      Map<String, dynamic> map) {
    return EncryptionConfigurationBigquerydatatransferV1(
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
    );
  }
}
