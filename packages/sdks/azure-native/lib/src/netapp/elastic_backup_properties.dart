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
  ElasticBackupProperties({
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
      elasticSnapshotResourceId: map['elasticSnapshotResourceId'] == null ? null : (map['elasticSnapshotResourceId']! as String).input(),
      elasticVolumeResourceId: (map['elasticVolumeResourceId'] as String).input(),
      label: map['label'] == null ? null : (map['label']! as String).input(),
      snapshotUsage: map['snapshotUsage'] == null ? null : (map['snapshotUsage']! as String).input(),
    );
  }
}

