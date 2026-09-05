// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceMasterUserSecret {
  /// The ARN for the KMS encryption key. If creating an
  /// encrypted replica, set this to the destination KMS ARN.
  final pulumi.Input<String?>? kmsKeyId;
  /// ARN of the secret.
  final pulumi.Input<String?>? secretArn;
  /// The status of the secret. Valid Values: `creating` | `active` | `rotating` | `impaired`.
  final pulumi.Input<String?>? secretStatus;

  /// Creates a new [InstanceMasterUserSecret].
  /// [kmsKeyId] The ARN for the KMS encryption key. If creating an
  /// [secretArn] ARN of the secret.
  /// [secretStatus] The status of the secret. Valid Values: `creating` | `active` | `rotating` | `impaired`.
  const InstanceMasterUserSecret({
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

  factory InstanceMasterUserSecret.fromMap(Map<String, dynamic> map) {
    return InstanceMasterUserSecret(
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretArn: (() { final guardedValue = map['secretArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretStatus: (() { final guardedValue = map['secretStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
