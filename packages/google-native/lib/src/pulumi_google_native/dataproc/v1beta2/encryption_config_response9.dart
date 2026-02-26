// ignore_for_file: unused_element, unnecessary_cast

/// Encryption settings for the cluster.
class EncryptionConfigResponse9 {
  /// Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  final String gcePdKmsKeyName;

  EncryptionConfigResponse9({
    required this.gcePdKmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcePdKmsKeyName'] = gcePdKmsKeyName;
    return map;
  }

  factory EncryptionConfigResponse9.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponse9(
      gcePdKmsKeyName: map['gcePdKmsKeyName'] as String,
    );
  }
}
