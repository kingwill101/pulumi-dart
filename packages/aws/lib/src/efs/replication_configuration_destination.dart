// ignore_for_file: unused_element, unnecessary_cast


class ReplicationConfigurationDestination {
  /// The availability zone in which the replica should be created. If specified, the replica will be created with One Zone storage. If omitted, regional storage will be used.
  final String? availabilityZoneName;
  /// The ID of the destination file system for the replication. If no ID is provided, then EFS creates a new file system with the default settings.
  final String? fileSystemId;
  /// The Key ID, ARN, alias, or alias ARN of the KMS key that should be used to encrypt the replica file system. If omitted, the default KMS key for EFS `/aws/elasticfilesystem` will be used.
  final String? kmsKeyId;
  /// The region in which the replica should be created.
  final String? region;
  final String? status;

  /// Creates a new [ReplicationConfigurationDestination].
  /// [availabilityZoneName] The availability zone in which the replica should be created. If specified, the replica will be created with One Zone storage. If omitted, regional storage will be used.
  /// [fileSystemId] The ID of the destination file system for the replication. If no ID is provided, then EFS creates a new file system with the default settings.
  /// [kmsKeyId] The Key ID, ARN, alias, or alias ARN of the KMS key that should be used to encrypt the replica file system. If omitted, the default KMS key for EFS `/aws/elasticfilesystem` will be used.
  /// [region] The region in which the replica should be created.
  /// [status] Optional.
  ReplicationConfigurationDestination({
    this.availabilityZoneName,
    this.fileSystemId,
    this.kmsKeyId,
    this.region,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneName': ?availabilityZoneName,
      'fileSystemId': ?fileSystemId,
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
      'status': ?status,
    };
  }

  factory ReplicationConfigurationDestination.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationDestination(
      availabilityZoneName: map['availabilityZoneName'] == null ? null : map['availabilityZoneName'] as String,
      fileSystemId: map['fileSystemId'] == null ? null : map['fileSystemId'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

