// ignore_for_file: unused_element, unnecessary_cast

class ClusterMasterUserSecretRds {
  /// ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to true.
  final String? kmsKeyId;

  /// Amazon Resource Name (ARN) of the secret.
  final String? secretArn;

  /// Status of the secret. Valid Values: `creating` | `active` | `rotating` | `impaired`.
  final String? secretStatus;

  ClusterMasterUserSecretRds({
    this.kmsKeyId,
    this.secretArn,
    this.secretStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final secretArnValue = secretArn;
    if (secretArnValue != null) {
      map['secretArn'] = secretArnValue;
    }
    final secretStatusValue = secretStatus;
    if (secretStatusValue != null) {
      map['secretStatus'] = secretStatusValue;
    }
    return map;
  }

  factory ClusterMasterUserSecretRds.fromMap(Map<String, dynamic> map) {
    return ClusterMasterUserSecretRds(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      secretArn: map['secretArn'] == null ? null : map['secretArn'] as String,
      secretStatus:
          map['secretStatus'] == null ? null : map['secretStatus'] as String,
    );
  }
}
