// ignore_for_file: unused_element, unnecessary_cast

class ClusterMasterUserSecret {
  /// The ARN for the KMS encryption key. When specifying <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span>, <span pulumi-lang-nodejs="`storageEncrypted`" pulumi-lang-dotnet="`StorageEncrypted`" pulumi-lang-go="`storageEncrypted`" pulumi-lang-python="`storage_encrypted`" pulumi-lang-yaml="`storageEncrypted`" pulumi-lang-java="`storageEncrypted`">`storage_encrypted`</span> needs to be set to true.
  final String? kmsKeyId;
  final String? secretArn;
  final String? secretStatus;

  ClusterMasterUserSecret({
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

  factory ClusterMasterUserSecret.fromMap(Map<String, dynamic> map) {
    return ClusterMasterUserSecret(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      secretArn: map['secretArn'] == null ? null : map['secretArn'] as String,
      secretStatus:
          map['secretStatus'] == null ? null : map['secretStatus'] as String,
    );
  }
}
