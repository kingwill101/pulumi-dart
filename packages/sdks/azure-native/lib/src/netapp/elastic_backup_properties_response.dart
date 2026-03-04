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
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      completionDate: pulumi.Input.fromValue(map['completionDate'] as String),
      creationDate: pulumi.Input.fromValue(map['creationDate'] as String),
      elasticBackupPolicyResourceId: pulumi.Input.fromValue(
        map['elasticBackupPolicyResourceId'] as String,
      ),
      elasticSnapshotResourceId: (() {
        final guardedValue = map['elasticSnapshotResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      elasticVolumeResourceId: pulumi.Input.fromValue(
        map['elasticVolumeResourceId'] as String,
      ),
      failureReason: pulumi.Input.fromValue(map['failureReason'] as String),
      label: (() {
        final guardedValue = map['label'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      size: pulumi.Input.fromValue(map['size'] as double),
      snapshotCreationDate: pulumi.Input.fromValue(
        map['snapshotCreationDate'] as String,
      ),
      snapshotUsage: (() {
        final guardedValue = map['snapshotUsage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      volumeSize: pulumi.Input.fromValue(map['volumeSize'] as String),
    );
  }
}
