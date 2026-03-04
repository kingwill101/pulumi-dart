// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MasterUserSecret
class MasterUserSecret {
  /// The AWS KMS key identifier that is used to encrypt the secret.
  final pulumi.Input<String>? kmsKeyId;

  /// The Amazon Resource Name (ARN) of the secret.
  final pulumi.Input<String>? secretArn;

  /// Creates a new [MasterUserSecret].
  /// [kmsKeyId] The AWS KMS key identifier that is used to encrypt the secret.
  /// [secretArn] The Amazon Resource Name (ARN) of the secret.
  MasterUserSecret({this.kmsKeyId, this.secretArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyId': ?kmsKeyId, 'secretArn': ?secretArn};
  }

  factory MasterUserSecret.fromMap(Map<String, dynamic> map) {
    return MasterUserSecret(
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretArn: (() {
        final guardedValue = map['secretArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
