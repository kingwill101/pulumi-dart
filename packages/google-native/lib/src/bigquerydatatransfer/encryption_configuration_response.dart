// ignore_for_file: unused_element, unnecessary_cast

/// Represents the encryption configuration for a transfer.
class EncryptionConfigurationResponse {
  /// The name of the KMS key used for encrypting BigQuery data.
  final String kmsKeyName;

  /// Creates a new [EncryptionConfigurationResponse].
  /// [kmsKeyName] The name of the KMS key used for encrypting BigQuery data.
  EncryptionConfigurationResponse({required this.kmsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': kmsKeyName};
  }

  factory EncryptionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigurationResponse(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
