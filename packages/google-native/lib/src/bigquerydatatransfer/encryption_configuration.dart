// ignore_for_file: unused_element, unnecessary_cast

/// Represents the encryption configuration for a transfer.
class EncryptionConfiguration {
  /// The name of the KMS key used for encrypting BigQuery data.
  final String? kmsKeyName;

  /// Creates a new [EncryptionConfiguration].
  /// [kmsKeyName] The name of the KMS key used for encrypting BigQuery data.
  EncryptionConfiguration({
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

  factory EncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return EncryptionConfiguration(
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
    );
  }
}
