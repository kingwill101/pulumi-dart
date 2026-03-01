// ignore_for_file: unused_element, unnecessary_cast

import 'replication_object_response.dart';
import 'volume_backup_properties_response.dart';
import 'volume_relocation_properties_response.dart';
import 'volume_snapshot_properties_response.dart';

/// DataProtection type volumes include an object containing details of the replication
class VolumePropertiesResponseDataProtection {
  /// Backup Properties
  final VolumeBackupPropertiesResponse? backup;
  /// Replication properties
  final ReplicationObjectResponse? replication;
  /// Snapshot properties.
  final VolumeSnapshotPropertiesResponse? snapshot;
  /// VolumeRelocation properties
  final VolumeRelocationPropertiesResponse? volumeRelocation;

  /// Creates a new [VolumePropertiesResponseDataProtection].
  /// [backup] Backup Properties
  /// [replication] Replication properties
  /// [snapshot] Snapshot properties.
  /// [volumeRelocation] VolumeRelocation properties
  VolumePropertiesResponseDataProtection({
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

  factory VolumePropertiesResponseDataProtection.fromMap(Map<String, dynamic> map) {
    return VolumePropertiesResponseDataProtection(
      backup: map['backup'] == null ? null : VolumeBackupPropertiesResponse.fromMap((map['backup'] as Map).cast<String, dynamic>()),
      replication: map['replication'] == null ? null : ReplicationObjectResponse.fromMap((map['replication'] as Map).cast<String, dynamic>()),
      snapshot: map['snapshot'] == null ? null : VolumeSnapshotPropertiesResponse.fromMap((map['snapshot'] as Map).cast<String, dynamic>()),
      volumeRelocation: map['volumeRelocation'] == null ? null : VolumeRelocationPropertiesResponse.fromMap((map['volumeRelocation'] as Map).cast<String, dynamic>()),
    );
  }
}

