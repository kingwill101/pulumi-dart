// ignore_for_file: unused_element, unnecessary_cast


/// Elastic Backup properties
class ElasticBackupProperties {
  /// ResourceId used to identify the elastic snapshot resource. This is required when an existing snapshot needs to be used for creating a manual backup
  final String? elasticSnapshotResourceId;
  /// ResourceId used to identify the Elastic Volume
  final String elasticVolumeResourceId;
  /// Label for backup
  final String? label;
  /// Manual backup using an already existing snapshot. This will always be CreateNewSnapshot for scheduled backups and UseExistingSnapshot/CreateNewSnapshot for manual backups
  final String? snapshotUsage;

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
      elasticSnapshotResourceId: map['elasticSnapshotResourceId'] == null ? null : map['elasticSnapshotResourceId'] as String,
      elasticVolumeResourceId: map['elasticVolumeResourceId'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      snapshotUsage: map['snapshotUsage'] == null ? null : map['snapshotUsage'] as String,
    );
  }
}

