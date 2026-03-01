// ignore_for_file: unused_element, unnecessary_cast


class ClusterConfigurationManagedStorageConfiguration {
  /// AWS Key Management Service key ARN for the Fargate ephemeral storage.
  final String? fargateEphemeralStorageKmsKeyId;
  /// AWS Key Management Service key ARN to encrypt the managed storage.
  final String? kmsKeyId;

  /// Creates a new [ClusterConfigurationManagedStorageConfiguration].
  /// [fargateEphemeralStorageKmsKeyId] AWS Key Management Service key ARN for the Fargate ephemeral storage.
  /// [kmsKeyId] AWS Key Management Service key ARN to encrypt the managed storage.
  ClusterConfigurationManagedStorageConfiguration({
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
      fargateEphemeralStorageKmsKeyId: map['fargateEphemeralStorageKmsKeyId'] == null ? null : map['fargateEphemeralStorageKmsKeyId'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
    );
  }
}

