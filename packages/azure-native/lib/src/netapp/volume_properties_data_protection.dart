// ignore_for_file: unused_element, unnecessary_cast

import 'replication_object.dart';
import 'volume_backup_properties.dart';
import 'volume_relocation_properties.dart';
import 'volume_snapshot_properties.dart';

/// DataProtection type volumes include an object containing details of the replication
class VolumePropertiesDataProtection {
  /// Backup Properties
  final VolumeBackupProperties? backup;
  /// Replication properties
  final ReplicationObject? replication;
  /// Snapshot properties.
  final VolumeSnapshotProperties? snapshot;
  /// VolumeRelocation properties
  final VolumeRelocationProperties? volumeRelocation;

  /// Creates a new [VolumePropertiesDataProtection].
  /// [backup] Backup Properties
  /// [replication] Replication properties
  /// [snapshot] Snapshot properties.
  /// [volumeRelocation] VolumeRelocation properties
  VolumePropertiesDataProtection({
    this.backup,
    this.replication,
    this.snapshot,
    this.volumeRelocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': ?backup == null ? null : backup!.toMap(),
      'replication': ?replication == null ? null : replication!.toMap(),
      'snapshot': ?snapshot == null ? null : snapshot!.toMap(),
      'volumeRelocation': ?volumeRelocation == null ? null : volumeRelocation!.toMap(),
    };
  }

  factory VolumePropertiesDataProtection.fromMap(Map<String, dynamic> map) {
    return VolumePropertiesDataProtection(
      backup: map['backup'] == null ? null : VolumeBackupProperties.fromMap((map['backup'] as Map).cast<String, dynamic>()),
      replication: map['replication'] == null ? null : ReplicationObject.fromMap((map['replication'] as Map).cast<String, dynamic>()),
      snapshot: map['snapshot'] == null ? null : VolumeSnapshotProperties.fromMap((map['snapshot'] as Map).cast<String, dynamic>()),
      volumeRelocation: map['volumeRelocation'] == null ? null : VolumeRelocationProperties.fromMap((map['volumeRelocation'] as Map).cast<String, dynamic>()),
    );
  }
}

