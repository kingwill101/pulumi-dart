// ignore_for_file: unused_element, unnecessary_cast

/// Encryption settings for the cluster.
class EncryptionConfig9 {
  /// Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  final String? gcePdKmsKeyName;

  EncryptionConfig9({
    this.gcePdKmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcePdKmsKeyNameValue = gcePdKmsKeyName;
    if (gcePdKmsKeyNameValue != null) {
      map['gcePdKmsKeyName'] = gcePdKmsKeyNameValue;
    }
    return map;
  }

  factory EncryptionConfig9.fromMap(Map<String, dynamic> map) {
    return EncryptionConfig9(
      gcePdKmsKeyName: map['gcePdKmsKeyName'] == null
          ? null
          : map['gcePdKmsKeyName'] as String,
    );
  }
}
