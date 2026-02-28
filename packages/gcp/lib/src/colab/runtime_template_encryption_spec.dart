// ignore_for_file: unused_element, unnecessary_cast

class RuntimeTemplateEncryptionSpec {
  /// The Cloud KMS encryption key (customer-managed encryption key) used to protect the runtime.
  final String? kmsKeyName;

  /// Creates a new [RuntimeTemplateEncryptionSpec].
  /// [kmsKeyName] The Cloud KMS encryption key (customer-managed encryption key) used to protect the runtime.
  RuntimeTemplateEncryptionSpec({
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

  factory RuntimeTemplateEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateEncryptionSpec(
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
    );
  }
}
