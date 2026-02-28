// ignore_for_file: unused_element, unnecessary_cast


/// Encryption settings for the cluster.
class EncryptionConfigDataprocV1beta2 {
  /// Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  final String? gcePdKmsKeyName;

  /// Creates a new [EncryptionConfigDataprocV1beta2].
  /// [gcePdKmsKeyName] Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  EncryptionConfigDataprocV1beta2({
    this.gcePdKmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcePdKmsKeyName': ?gcePdKmsKeyName,
    };
  }

  factory EncryptionConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigDataprocV1beta2(
      gcePdKmsKeyName: map['gcePdKmsKeyName'] == null ? null : map['gcePdKmsKeyName'] as String,
    );
  }
}

