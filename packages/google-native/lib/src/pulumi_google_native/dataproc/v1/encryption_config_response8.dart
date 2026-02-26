// ignore_for_file: unused_element, unnecessary_cast

/// Encryption settings for the cluster.
class EncryptionConfigResponse8 {
  /// Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  final String gcePdKmsKeyName;

  /// Optional. The Cloud KMS key name to use for encrypting customer core content in spanner and cluster PD disk for all instances in the cluster.
  final String kmsKey;

  EncryptionConfigResponse8({
    required this.gcePdKmsKeyName,
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcePdKmsKeyName'] = gcePdKmsKeyName;
    map['kmsKey'] = kmsKey;
    return map;
  }

  factory EncryptionConfigResponse8.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponse8(
      gcePdKmsKeyName: map['gcePdKmsKeyName'] as String,
      kmsKey: map['kmsKey'] as String,
    );
  }
}
