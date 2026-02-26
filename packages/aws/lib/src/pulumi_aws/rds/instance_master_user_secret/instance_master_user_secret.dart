// ignore_for_file: unused_element, unnecessary_cast

class InstanceMasterUserSecret {
  /// The ARN for the KMS encryption key. If creating an
  /// encrypted replica, set this to the destination KMS ARN.
  final String? kmsKeyId;

  /// The Amazon Resource Name (ARN) of the secret.
  final String? secretArn;

  /// The status of the secret. Valid Values: <span pulumi-lang-nodejs="`creating`" pulumi-lang-dotnet="`Creating`" pulumi-lang-go="`creating`" pulumi-lang-python="`creating`" pulumi-lang-yaml="`creating`" pulumi-lang-java="`creating`">`creating`</span> | <span pulumi-lang-nodejs="`active`" pulumi-lang-dotnet="`Active`" pulumi-lang-go="`active`" pulumi-lang-python="`active`" pulumi-lang-yaml="`active`" pulumi-lang-java="`active`">`active`</span> | <span pulumi-lang-nodejs="`rotating`" pulumi-lang-dotnet="`Rotating`" pulumi-lang-go="`rotating`" pulumi-lang-python="`rotating`" pulumi-lang-yaml="`rotating`" pulumi-lang-java="`rotating`">`rotating`</span> | <span pulumi-lang-nodejs="`impaired`" pulumi-lang-dotnet="`Impaired`" pulumi-lang-go="`impaired`" pulumi-lang-python="`impaired`" pulumi-lang-yaml="`impaired`" pulumi-lang-java="`impaired`">`impaired`</span>.
  final String? secretStatus;

  InstanceMasterUserSecret({
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

  factory InstanceMasterUserSecret.fromMap(Map<String, dynamic> map) {
    return InstanceMasterUserSecret(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      secretArn: map['secretArn'] == null ? null : map['secretArn'] as String,
      secretStatus:
          map['secretStatus'] == null ? null : map['secretStatus'] as String,
    );
  }
}
