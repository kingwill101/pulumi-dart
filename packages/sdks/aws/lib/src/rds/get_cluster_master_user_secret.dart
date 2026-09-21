// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterMasterUserSecret {
  /// Amazon Web Services KMS key identifier that is used to encrypt the secret.
  final pulumi.Input<String> kmsKeyId;
  /// ARN of the secret.
  final pulumi.Input<String> secretArn;
  /// Status of the secret.
  final pulumi.Input<String> secretStatus;

  /// Creates a new [GetClusterMasterUserSecret].
  /// [kmsKeyId] Amazon Web Services KMS key identifier that is used to encrypt the secret.
  /// [secretArn] ARN of the secret.
  /// [secretStatus] Status of the secret.
  const GetClusterMasterUserSecret({
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

  factory GetClusterMasterUserSecret.fromMap(Map<String, dynamic> map) {
    return GetClusterMasterUserSecret(
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
      secretArn: pulumi.Input.fromValue(map['secretArn'] as String),
      secretStatus: pulumi.Input.fromValue(map['secretStatus'] as String),
    );
  }
}
