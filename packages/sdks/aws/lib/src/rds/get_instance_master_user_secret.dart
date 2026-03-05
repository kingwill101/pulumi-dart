// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceMasterUserSecret {
  /// The Amazon Web Services KMS key identifier that is used to encrypt the secret.
  final pulumi.Input<String> kmsKeyId;
  /// The Amazon Resource Name (ARN) of the secret.
  final pulumi.Input<String> secretArn;
  /// The status of the secret. Valid Values: `creating` | `active` | `rotating` | `impaired`.
  final pulumi.Input<String> secretStatus;

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
    return <String, dynamic>{
      'kmsKeyId': kmsKeyId,
      'secretArn': secretArn,
      'secretStatus': secretStatus,
    };
  }

  factory GetInstanceMasterUserSecret.fromMap(Map<String, dynamic> map) {
    return GetInstanceMasterUserSecret(
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
      secretArn: pulumi.Input.fromValue(map['secretArn'] as String),
      secretStatus: pulumi.Input.fromValue(map['secretStatus'] as String),
    );
  }
}

