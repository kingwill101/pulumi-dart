// ignore_for_file: unused_element, unnecessary_cast

class ClusterMasterUserSecret {
  /// ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to true.
  final String? kmsKeyId;

  /// Amazon Resource Name (ARN) of the secret.
  final String? secretArn;

  /// Status of the secret. Valid Values: `creating` | `active` | `rotating` | `impaired`.
  final String? secretStatus;

  /// Creates a new [ClusterMasterUserSecret].
  /// [kmsKeyId] ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to true.
  /// [secretArn] Amazon Resource Name (ARN) of the secret.
  /// [secretStatus] Status of the secret. Valid Values: `creating` | `active` | `rotating` | `impaired`.
  ClusterMasterUserSecret({this.kmsKeyId, this.secretArn, this.secretStatus});

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
      secretStatus: map['secretStatus'] == null
          ? null
          : map['secretStatus'] as String,
    );
  }
}
