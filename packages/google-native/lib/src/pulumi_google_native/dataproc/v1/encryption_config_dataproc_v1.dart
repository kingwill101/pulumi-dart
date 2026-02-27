// ignore_for_file: unused_element, unnecessary_cast

/// Encryption settings for the cluster.
class EncryptionConfigDataprocV1 {
  /// Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  final String? gcePdKmsKeyName;

  /// Optional. The Cloud KMS key name to use for encrypting customer core content in spanner and cluster PD disk for all instances in the cluster.
  final String? kmsKey;

  EncryptionConfigDataprocV1({
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

  factory EncryptionConfigDataprocV1.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigDataprocV1(
      gcePdKmsKeyName: map['gcePdKmsKeyName'] == null
          ? null
          : map['gcePdKmsKeyName'] as String,
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
