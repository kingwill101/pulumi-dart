// ignore_for_file: unused_element, unnecessary_cast


class ClusterMasterUserSecret {
  /// The ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to true.
  final String? kmsKeyId;
  final String? secretArn;
  final String? secretStatus;

  /// Creates a new [ClusterMasterUserSecret].
  /// [kmsKeyId] The ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to true.
  /// [secretArn] Optional.
  /// [secretStatus] Optional.
  ClusterMasterUserSecret({
    this.kmsKeyId,
    this.secretArn,
    this.secretStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'secretArn': ?secretArn,
      'secretStatus': ?secretStatus,
    };
  }

  factory ClusterMasterUserSecret.fromMap(Map<String, dynamic> map) {
    return ClusterMasterUserSecret(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      secretArn: map['secretArn'] == null ? null : map['secretArn'] as String,
      secretStatus: map['secretStatus'] == null ? null : map['secretStatus'] as String,
    );
  }
}

