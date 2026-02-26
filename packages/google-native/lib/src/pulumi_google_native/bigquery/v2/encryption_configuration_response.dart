// ignore_for_file: unused_element, unnecessary_cast

class EncryptionConfigurationResponse {
  /// Optional. Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table. The BigQuery Service Account associated with your project requires access to this encryption key.
  final String kmsKeyName;

  EncryptionConfigurationResponse({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory EncryptionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigurationResponse(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
