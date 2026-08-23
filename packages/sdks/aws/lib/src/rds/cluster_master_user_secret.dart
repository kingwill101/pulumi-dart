// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMasterUserSecret {
  /// ARN for the KMS encryption key. When specifying `kmsKeyId`, `storageEncrypted` needs to be set to true.
  final pulumi.Input<String>? kmsKeyId;
  /// Amazon Resource Name (ARN) of the secret.
  final pulumi.Input<String>? secretArn;
  /// Status of the secret. Valid Values: `creating` | `active` | `rotating` | `impaired`.
  final pulumi.Input<String>? secretStatus;

  /// Creates a new [ClusterMasterUserSecret].
  /// [kmsKeyId] ARN for the KMS encryption key. When specifying `kmsKeyId`, `storageEncrypted` needs to be set to true.
  /// [secretArn] Amazon Resource Name (ARN) of the secret.
  /// [secretStatus] Status of the secret. Valid Values: `creating` | `active` | `rotating` | `impaired`.
  const ClusterMasterUserSecret({
    this.kmsKeyId,
    this.secretArn,
    this.secretStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'secretArn': ?secretArn,
      'secretStatus': ?secretStatus,
    };
  }

  factory ClusterMasterUserSecret.fromMap(Map<String, dynamic> map) {
    return ClusterMasterUserSecret(
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretArn: (() { final guardedValue = map['secretArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretStatus: (() { final guardedValue = map['secretStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
