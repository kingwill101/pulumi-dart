// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MasterUserSecret
class MasterUserSecretResponse {
  /// The AWS KMS key identifier that is used to encrypt the secret.
  final pulumi.Input<String>? kmsKeyId;
  /// The Amazon Resource Name (ARN) of the secret.
  final pulumi.Input<String>? secretArn;

  /// Creates a new [MasterUserSecretResponse].
  /// [kmsKeyId] The AWS KMS key identifier that is used to encrypt the secret.
  /// [secretArn] The Amazon Resource Name (ARN) of the secret.
  MasterUserSecretResponse({
    this.kmsKeyId,
    this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'secretArn': ?secretArn,
    };
  }

  factory MasterUserSecretResponse.fromMap(Map<String, dynamic> map) {
    return MasterUserSecretResponse(
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      secretArn: map['secretArn'] == null ? null : (map['secretArn'] as String).input(),
    );
  }
}

