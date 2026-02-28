// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceMasterUserSecret {
  /// The Amazon Web Services KMS key identifier that is used to encrypt the secret.
  final String kmsKeyId;

  /// The Amazon Resource Name (ARN) of the secret.
  final String secretArn;

  /// The status of the secret. Valid Values: `creating` | `active` | `rotating` | `impaired`.
  final String secretStatus;

  /// Creates a new [GetInstanceMasterUserSecret].
  /// [kmsKeyId] The Amazon Web Services KMS key identifier that is used to encrypt the secret.
  /// [secretArn] The Amazon Resource Name (ARN) of the secret.
  /// [secretStatus] The status of the secret. Valid Values: `creating` | `active` | `rotating` | `impaired`.
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
