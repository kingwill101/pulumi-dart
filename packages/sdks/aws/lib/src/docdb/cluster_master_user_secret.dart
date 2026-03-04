// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMasterUserSecret {
  /// The ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to true.
  final pulumi.Input<String>? kmsKeyId;
  final pulumi.Input<String>? secretArn;
  final pulumi.Input<String>? secretStatus;

  /// Creates a new [ClusterMasterUserSecret].
  /// [kmsKeyId] The ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to true.
  /// [secretArn] Optional.
  /// [secretStatus] Optional.
  ClusterMasterUserSecret({this.kmsKeyId, this.secretArn, this.secretStatus});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'secretArn': ?secretArn,
      'secretStatus': ?secretStatus,
    };
  }

  factory ClusterMasterUserSecret.fromMap(Map<String, dynamic> map) {
    return ClusterMasterUserSecret(
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
      secretStatus: (() {
        final guardedValue = map['secretStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
