// ignore_for_file: unused_element, unnecessary_cast

/// Encryption settings for the cluster.
class EncryptionConfigResponseDataprocV1beta2 {
  /// Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  final String gcePdKmsKeyName;

  EncryptionConfigResponseDataprocV1beta2({
    required this.gcePdKmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcePdKmsKeyName'] = gcePdKmsKeyName;
    return map;
  }

  factory EncryptionConfigResponseDataprocV1beta2.fromMap(
      Map<String, dynamic> map) {
    return EncryptionConfigResponseDataprocV1beta2(
      gcePdKmsKeyName: map['gcePdKmsKeyName'] as String,
    );
  }
}
