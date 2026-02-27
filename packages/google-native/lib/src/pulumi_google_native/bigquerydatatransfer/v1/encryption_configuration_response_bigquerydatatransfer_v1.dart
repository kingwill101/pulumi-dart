// ignore_for_file: unused_element, unnecessary_cast

/// Represents the encryption configuration for a transfer.
class EncryptionConfigurationResponseBigquerydatatransferV1 {
  /// The name of the KMS key used for encrypting BigQuery data.
  final String kmsKeyName;

  EncryptionConfigurationResponseBigquerydatatransferV1({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory EncryptionConfigurationResponseBigquerydatatransferV1.fromMap(
      Map<String, dynamic> map) {
    return EncryptionConfigurationResponseBigquerydatatransferV1(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
