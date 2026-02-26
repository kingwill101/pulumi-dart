// ignore_for_file: unused_element, unnecessary_cast

/// Represents the encryption configuration for a transfer.
class EncryptionConfigurationResponse2 {
  /// The name of the KMS key used for encrypting BigQuery data.
  final String kmsKeyName;

  EncryptionConfigurationResponse2({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory EncryptionConfigurationResponse2.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigurationResponse2(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
