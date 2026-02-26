// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceMasterUserSecret {
  /// The Amazon Web Services KMS key identifier that is used to encrypt the secret.
  final String kmsKeyId;

  /// The Amazon Resource Name (ARN) of the secret.
  final String secretArn;

  /// The status of the secret. Valid Values: <span pulumi-lang-nodejs="`creating`" pulumi-lang-dotnet="`Creating`" pulumi-lang-go="`creating`" pulumi-lang-python="`creating`" pulumi-lang-yaml="`creating`" pulumi-lang-java="`creating`">`creating`</span> | <span pulumi-lang-nodejs="`active`" pulumi-lang-dotnet="`Active`" pulumi-lang-go="`active`" pulumi-lang-python="`active`" pulumi-lang-yaml="`active`" pulumi-lang-java="`active`">`active`</span> | <span pulumi-lang-nodejs="`rotating`" pulumi-lang-dotnet="`Rotating`" pulumi-lang-go="`rotating`" pulumi-lang-python="`rotating`" pulumi-lang-yaml="`rotating`" pulumi-lang-java="`rotating`">`rotating`</span> | <span pulumi-lang-nodejs="`impaired`" pulumi-lang-dotnet="`Impaired`" pulumi-lang-go="`impaired`" pulumi-lang-python="`impaired`" pulumi-lang-yaml="`impaired`" pulumi-lang-java="`impaired`">`impaired`</span>.
  final String secretStatus;

  GetInstanceMasterUserSecret({
    required this.kmsKeyId,
    required this.secretArn,
    required this.secretStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyId'] = kmsKeyId;
    map['secretArn'] = secretArn;
    map['secretStatus'] = secretStatus;
    return map;
  }

  factory GetInstanceMasterUserSecret.fromMap(Map<String, dynamic> map) {
    return GetInstanceMasterUserSecret(
      kmsKeyId: map['kmsKeyId'] as String,
      secretArn: map['secretArn'] as String,
      secretStatus: map['secretStatus'] as String,
    );
  }
}
