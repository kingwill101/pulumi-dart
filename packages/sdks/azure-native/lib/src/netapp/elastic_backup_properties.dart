// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Elastic Backup properties
class ElasticBackupProperties {
  /// ResourceId used to identify the elastic snapshot resource. This is required when an existing snapshot needs to be used for creating a manual backup
  final pulumi.Input<String>? elasticSnapshotResourceId;
  /// ResourceId used to identify the Elastic Volume
  final pulumi.Input<String> elasticVolumeResourceId;
  /// Label for backup
  final pulumi.Input<String>? label;
  /// Manual backup using an already existing snapshot. This will always be CreateNewSnapshot for scheduled backups and UseExistingSnapshot/CreateNewSnapshot for manual backups
  final pulumi.Input<String>? snapshotUsage;

  /// Creates a new [ElasticBackupProperties].
  /// [elasticSnapshotResourceId] ResourceId used to identify the elastic snapshot resource. This is required when an existing snapshot needs to be used for creating a manual backup
  /// [elasticVolumeResourceId] ResourceId used to identify the Elastic Volume
  /// [label] Label for backup
  /// [snapshotUsage] Manual backup using an already existing snapshot. This will always be CreateNewSnapshot for scheduled backups and UseExistingSnapshot/CreateNewSnapshot for manual backups
  const ElasticBackupProperties({
    this.elasticSnapshotResourceId,
    required this.elasticVolumeResourceId,
    this.label,
    this.snapshotUsage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticSnapshotResourceId': ?elasticSnapshotResourceId,
      'elasticVolumeResourceId': elasticVolumeResourceId,
      'label': ?label,
      'snapshotUsage': ?snapshotUsage,
    };
  }

  factory ElasticBackupProperties.fromMap(Map<String, dynamic> map) {
    return ElasticBackupProperties(
      elasticSnapshotResourceId: (() { final guardedValue = map['elasticSnapshotResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticVolumeResourceId: pulumi.Input.fromValue(map['elasticVolumeResourceId'] as String),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotUsage: (() { final guardedValue = map['snapshotUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

