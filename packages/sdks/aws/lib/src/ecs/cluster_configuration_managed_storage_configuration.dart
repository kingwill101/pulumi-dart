// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterConfigurationManagedStorageConfiguration {
  /// KMS key ARN for the Fargate ephemeral storage.
  final pulumi.Input<String?>? fargateEphemeralStorageKmsKeyId;
  /// KMS key ARN to encrypt the managed storage.
  final pulumi.Input<String?>? kmsKeyId;

  /// Creates a new [ClusterConfigurationManagedStorageConfiguration].
  /// [fargateEphemeralStorageKmsKeyId] KMS key ARN for the Fargate ephemeral storage.
  /// [kmsKeyId] KMS key ARN to encrypt the managed storage.
  const ClusterConfigurationManagedStorageConfiguration({
    this.fargateEphemeralStorageKmsKeyId,
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fargateEphemeralStorageKmsKeyId': ?fargateEphemeralStorageKmsKeyId,
      'kmsKeyId': ?kmsKeyId,
    };
  }

  factory ClusterConfigurationManagedStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return ClusterConfigurationManagedStorageConfiguration(
      fargateEphemeralStorageKmsKeyId: (() { final guardedValue = map['fargateEphemeralStorageKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
