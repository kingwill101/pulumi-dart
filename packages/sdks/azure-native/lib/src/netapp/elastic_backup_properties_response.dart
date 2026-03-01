// ignore_for_file: unused_element, unnecessary_cast


/// Elastic Backup properties
class ElasticBackupPropertiesResponse {
  /// Type of backup Manual or Scheduled
  final String backupType;
  /// The completion date of the backup
  final String completionDate;
  /// The creation date of the backup
  final String creationDate;
  /// ResourceId used to identify the elastic backup policy
  final String elasticBackupPolicyResourceId;
  /// ResourceId used to identify the elastic snapshot resource. This is required when an existing snapshot needs to be used for creating a manual backup
  final String? elasticSnapshotResourceId;
  /// ResourceId used to identify the Elastic Volume
  final String elasticVolumeResourceId;
  /// Failure reason
  final String failureReason;
  /// Label for backup
  final String? label;
  /// Azure lifecycle management.
  final String provisioningState;
  /// Size of backup in bytes
  final double size;
  /// The snapshot creation date of the backup
  final String snapshotCreationDate;
  /// Manual backup using an already existing snapshot. This will always be CreateNewSnapshot for scheduled backups and UseExistingSnapshot/CreateNewSnapshot for manual backups
  final String? snapshotUsage;
  /// Specifies if the backup is for a large volume.
  final String volumeSize;

  /// Creates a new [ElasticBackupPropertiesResponse].
  /// [backupType] Type of backup Manual or Scheduled
  /// [completionDate] The completion date of the backup
  /// [creationDate] The creation date of the backup
  /// [elasticBackupPolicyResourceId] ResourceId used to identify the elastic backup policy
  /// [elasticSnapshotResourceId] ResourceId used to identify the elastic snapshot resource. This is required when an existing snapshot needs to be used for creating a manual backup
  /// [elasticVolumeResourceId] ResourceId used to identify the Elastic Volume
  /// [failureReason] Failure reason
  /// [label] Label for backup
  /// [provisioningState] Azure lifecycle management.
  /// [size] Size of backup in bytes
  /// [snapshotCreationDate] The snapshot creation date of the backup
  /// [snapshotUsage] Manual backup using an already existing snapshot. This will always be CreateNewSnapshot for scheduled backups and UseExistingSnapshot/CreateNewSnapshot for manual backups
  /// [volumeSize] Specifies if the backup is for a large volume.
  ElasticBackupPropertiesResponse({
    required this.backupType,
    required this.completionDate,
    required this.creationDate,
    required this.elasticBackupPolicyResourceId,
    this.elasticSnapshotResourceId,
    required this.elasticVolumeResourceId,
    required this.failureReason,
    this.label,
    required this.provisioningState,
    required this.size,
    required this.snapshotCreationDate,
    this.snapshotUsage,
    required this.volumeSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupType': backupType,
      'completionDate': completionDate,
      'creationDate': creationDate,
      'elasticBackupPolicyResourceId': elasticBackupPolicyResourceId,
      'elasticSnapshotResourceId': ?elasticSnapshotResourceId,
      'elasticVolumeResourceId': elasticVolumeResourceId,
      'failureReason': failureReason,
      'label': ?label,
      'provisioningState': provisioningState,
      'size': size,
      'snapshotCreationDate': snapshotCreationDate,
      'snapshotUsage': ?snapshotUsage,
      'volumeSize': volumeSize,
    };
  }

  factory ElasticBackupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticBackupPropertiesResponse(
      backupType: map['backupType'] as String,
      completionDate: map['completionDate'] as String,
      creationDate: map['creationDate'] as String,
      elasticBackupPolicyResourceId: map['elasticBackupPolicyResourceId'] as String,
      elasticSnapshotResourceId: map['elasticSnapshotResourceId'] == null ? null : map['elasticSnapshotResourceId'] as String,
      elasticVolumeResourceId: map['elasticVolumeResourceId'] as String,
      failureReason: map['failureReason'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      provisioningState: map['provisioningState'] as String,
      size: map['size'] as double,
      snapshotCreationDate: map['snapshotCreationDate'] as String,
      snapshotUsage: map['snapshotUsage'] == null ? null : map['snapshotUsage'] as String,
      volumeSize: map['volumeSize'] as String,
    );
  }
}

