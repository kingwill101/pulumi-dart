// ignore_for_file: unused_element, unnecessary_cast

/// The encryption options for the Cloud Composer environment and its dependencies. Supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
class EncryptionConfigComposerV1beta1 {
  /// Optional. Customer-managed Encryption Key available through Google's Key Management Service. Cannot be updated. If not specified, Google-managed key will be used.
  final String? kmsKeyName;

  /// Creates a new [EncryptionConfigComposerV1beta1].
  /// [kmsKeyName] Optional. Customer-managed Encryption Key available through Google's Key Management Service. Cannot be updated. If not specified, Google-managed key will be used.
  EncryptionConfigComposerV1beta1({this.kmsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': ?kmsKeyName};
  }

  factory EncryptionConfigComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigComposerV1beta1(
      kmsKeyName: map['kmsKeyName'] == null
          ? null
          : map['kmsKeyName'] as String,
    );
  }
}
