// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Elastic Backup properties
class ElasticBackupPropertiesResponse {
  /// Type of backup Manual or Scheduled
  final pulumi.Input<String> backupType;
  /// The completion date of the backup
  final pulumi.Input<String> completionDate;
  /// The creation date of the backup
  final pulumi.Input<String> creationDate;
  /// ResourceId used to identify the elastic backup policy
  final pulumi.Input<String> elasticBackupPolicyResourceId;
  /// ResourceId used to identify the elastic snapshot resource. This is required when an existing snapshot needs to be used for creating a manual backup
  final pulumi.Input<String>? elasticSnapshotResourceId;
  /// ResourceId used to identify the Elastic Volume
  final pulumi.Input<String> elasticVolumeResourceId;
  /// Failure reason
  final pulumi.Input<String> failureReason;
  /// Label for backup
  final pulumi.Input<String>? label;
  /// Azure lifecycle management.
  final pulumi.Input<String> provisioningState;
  /// Size of backup in bytes
  final pulumi.Input<double> size;
  /// The snapshot creation date of the backup
  final pulumi.Input<String> snapshotCreationDate;
  /// Manual backup using an already existing snapshot. This will always be CreateNewSnapshot for scheduled backups and UseExistingSnapshot/CreateNewSnapshot for manual backups
  final pulumi.Input<String>? snapshotUsage;
  /// Specifies if the backup is for a large volume.
  final pulumi.Input<String> volumeSize;

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
      backupType: (map['backupType'] as String).input(),
      completionDate: (map['completionDate'] as String).input(),
      creationDate: (map['creationDate'] as String).input(),
      elasticBackupPolicyResourceId: (map['elasticBackupPolicyResourceId'] as String).input(),
      elasticSnapshotResourceId: map['elasticSnapshotResourceId'] == null ? null : (map['elasticSnapshotResourceId'] as String).input(),
      elasticVolumeResourceId: (map['elasticVolumeResourceId'] as String).input(),
      failureReason: (map['failureReason'] as String).input(),
      label: map['label'] == null ? null : (map['label'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      size: (map['size'] as double).input(),
      snapshotCreationDate: (map['snapshotCreationDate'] as String).input(),
      snapshotUsage: map['snapshotUsage'] == null ? null : (map['snapshotUsage'] as String).input(),
      volumeSize: (map['volumeSize'] as String).input(),
    );
  }
}

