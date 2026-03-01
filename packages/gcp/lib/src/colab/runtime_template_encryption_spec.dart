// ignore_for_file: unused_element, unnecessary_cast

class RuntimeTemplateEncryptionSpec {
  /// The Cloud KMS encryption key (customer-managed encryption key) used to protect the runtime.
  final String? kmsKeyName;

  /// Creates a new [RuntimeTemplateEncryptionSpec].
  /// [kmsKeyName] The Cloud KMS encryption key (customer-managed encryption key) used to protect the runtime.
  RuntimeTemplateEncryptionSpec({this.kmsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': ?kmsKeyName};
  }

  factory RuntimeTemplateEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateEncryptionSpec(
      kmsKeyName: map['kmsKeyName'] == null
          ? null
          : map['kmsKeyName'] as String,
    );
  }
}
