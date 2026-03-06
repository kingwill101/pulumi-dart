// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoSnapshotPolicyCopyEncryptionConfiguration {
  /// Whether to enable encryption for cross-region snapshot replication. Default value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? encrypted;
  /// The ID of the Key Management Service (KMS) key used to encrypt snapshots in cross-region snapshot replication.
  final pulumi.Input<String>? kmsKeyId;

  /// Creates a new [AutoSnapshotPolicyCopyEncryptionConfiguration].
  /// [encrypted] Whether to enable encryption for cross-region snapshot replication. Default value: `false`. Valid values: `true`, `false`.
  /// [kmsKeyId] The ID of the Key Management Service (KMS) key used to encrypt snapshots in cross-region snapshot replication.
  const AutoSnapshotPolicyCopyEncryptionConfiguration({
    this.encrypted,
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encrypted': ?encrypted,
      'kmsKeyId': ?kmsKeyId,
    };
  }

  factory AutoSnapshotPolicyCopyEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return AutoSnapshotPolicyCopyEncryptionConfiguration(
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

