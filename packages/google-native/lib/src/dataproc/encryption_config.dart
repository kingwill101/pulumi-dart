// ignore_for_file: unused_element, unnecessary_cast

/// Encryption settings for the cluster.
class EncryptionConfig {
  /// Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  final String? gcePdKmsKeyName;

  /// Optional. The Cloud KMS key name to use for encrypting customer core content in spanner and cluster PD disk for all instances in the cluster.
  final String? kmsKey;

  /// Creates a new [EncryptionConfig].
  /// [gcePdKmsKeyName] Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  /// [kmsKey] Optional. The Cloud KMS key name to use for encrypting customer core content in spanner and cluster PD disk for all instances in the cluster.
  EncryptionConfig({this.gcePdKmsKeyName, this.kmsKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcePdKmsKeyName': ?gcePdKmsKeyName,
      'kmsKey': ?kmsKey,
    };
  }

  factory EncryptionConfig.fromMap(Map<String, dynamic> map) {
    return EncryptionConfig(
      gcePdKmsKeyName: map['gcePdKmsKeyName'] == null
          ? null
          : map['gcePdKmsKeyName'] as String,
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
