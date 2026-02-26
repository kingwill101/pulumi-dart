// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplateEncryptionConfig {
  /// Optional. The Cloud KMS key name to use for encryption.
  final String? kmsKey;

  WorkflowTemplateEncryptionConfig({
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

  factory WorkflowTemplateEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateEncryptionConfig(
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
