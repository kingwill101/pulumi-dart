// ignore_for_file: unused_element, unnecessary_cast

/// The encryption options for the Cloud Composer environment and its dependencies.Supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
class EncryptionConfigResponseComposerV1 {
  /// Optional. Customer-managed Encryption Key available through Google's Key Management Service. Cannot be updated. If not specified, Google-managed key will be used.
  final String kmsKeyName;

  EncryptionConfigResponseComposerV1({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory EncryptionConfigResponseComposerV1.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponseComposerV1(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
