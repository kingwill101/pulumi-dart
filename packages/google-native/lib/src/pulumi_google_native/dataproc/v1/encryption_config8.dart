// ignore_for_file: unused_element, unnecessary_cast

/// Encryption settings for the cluster.
class EncryptionConfig8 {
  /// Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  final String? gcePdKmsKeyName;

  /// Optional. The Cloud KMS key name to use for encrypting customer core content in spanner and cluster PD disk for all instances in the cluster.
  final String? kmsKey;

  EncryptionConfig8({
    this.gcePdKmsKeyName,
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcePdKmsKeyNameValue = gcePdKmsKeyName;
    if (gcePdKmsKeyNameValue != null) {
      map['gcePdKmsKeyName'] = gcePdKmsKeyNameValue;
    }
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    return map;
  }

  factory EncryptionConfig8.fromMap(Map<String, dynamic> map) {
    return EncryptionConfig8(
      gcePdKmsKeyName: map['gcePdKmsKeyName'] == null
          ? null
          : map['gcePdKmsKeyName'] as String,
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
