// ignore_for_file: unused_element, unnecessary_cast

/// Encryption settings for the encrypting customer core content. NEXT ID: 2
class GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig {
  /// Optional. The Cloud KMS key name to use for encrypting customer core content.
  final String? kmsKey;

  GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig({
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    return map;
  }

  factory GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig(
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
