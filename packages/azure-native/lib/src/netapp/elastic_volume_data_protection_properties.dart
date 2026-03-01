// ignore_for_file: unused_element, unnecessary_cast

import 'elastic_volume_backup_properties.dart';
import 'elastic_volume_snapshot_properties.dart';

/// Data protection configuration option for the volume, including snapshot policies and backup.
class ElasticVolumeDataProtectionProperties {
  /// Used to configure backups on an elastic volume.
  final ElasticVolumeBackupProperties? backup;
  /// Used to apply a snapshot policy to a volume.
  final ElasticVolumeSnapshotProperties? snapshot;

  /// Creates a new [ElasticVolumeDataProtectionProperties].
  /// [backup] Used to configure backups on an elastic volume.
  /// [snapshot] Used to apply a snapshot policy to a volume.
  ElasticVolumeDataProtectionProperties({
    this.backup,
    this.snapshot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': ?backup == null ? null : backup!.toMap(),
      'snapshot': ?snapshot == null ? null : snapshot!.toMap(),
    };
  }

  factory ElasticVolumeDataProtectionProperties.fromMap(Map<String, dynamic> map) {
    return ElasticVolumeDataProtectionProperties(
      backup: map['backup'] == null ? null : ElasticVolumeBackupProperties.fromMap((map['backup'] as Map).cast<String, dynamic>()),
      snapshot: map['snapshot'] == null ? null : ElasticVolumeSnapshotProperties.fromMap((map['snapshot'] as Map).cast<String, dynamic>()),
    );
  }
}

