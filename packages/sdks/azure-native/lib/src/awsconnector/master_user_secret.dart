// ignore_for_file: unused_element, unnecessary_cast


/// Definition of MasterUserSecret
class MasterUserSecret {
  /// The AWS KMS key identifier that is used to encrypt the secret.
  final String? kmsKeyId;
  /// The Amazon Resource Name (ARN) of the secret.
  final String? secretArn;

  /// Creates a new [MasterUserSecret].
  /// [kmsKeyId] The AWS KMS key identifier that is used to encrypt the secret.
  /// [secretArn] The Amazon Resource Name (ARN) of the secret.
  MasterUserSecret({
    this.kmsKeyId,
    this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'secretArn': ?secretArn,
    };
  }

  factory MasterUserSecret.fromMap(Map<String, dynamic> map) {
    return MasterUserSecret(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      secretArn: map['secretArn'] == null ? null : map['secretArn'] as String,
    );
  }
}

