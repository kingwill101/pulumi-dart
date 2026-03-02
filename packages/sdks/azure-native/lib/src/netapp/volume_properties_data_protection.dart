// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_object.dart';
import 'volume_backup_properties.dart';
import 'volume_relocation_properties.dart';
import 'volume_snapshot_properties.dart';

/// DataProtection type volumes include an object containing details of the replication
class VolumePropertiesDataProtection {
  /// Backup Properties
  final pulumi.Input<VolumeBackupProperties>? backup;
  /// Replication properties
  final pulumi.Input<ReplicationObject>? replication;
  /// Snapshot properties.
  final pulumi.Input<VolumeSnapshotProperties>? snapshot;
  /// VolumeRelocation properties
  final pulumi.Input<VolumeRelocationProperties>? volumeRelocation;

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
      'backup': ?pulumi.Input.mapOptionalInputValue<VolumeBackupProperties, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'replication': ?pulumi.Input.mapOptionalInputValue<ReplicationObject, Map<String, dynamic>>(replication, (value) => value.toMap()),
      'snapshot': ?pulumi.Input.mapOptionalInputValue<VolumeSnapshotProperties, Map<String, dynamic>>(snapshot, (value) => value.toMap()),
      'volumeRelocation': ?pulumi.Input.mapOptionalInputValue<VolumeRelocationProperties, Map<String, dynamic>>(volumeRelocation, (value) => value.toMap()),
    };
  }

  factory VolumePropertiesDataProtection.fromMap(Map<String, dynamic> map) {
    return VolumePropertiesDataProtection(
      backup: map['backup'] == null ? null : (VolumeBackupProperties.fromMap((map['backup'] as Map).cast<String, dynamic>())).input(),
      replication: map['replication'] == null ? null : (ReplicationObject.fromMap((map['replication'] as Map).cast<String, dynamic>())).input(),
      snapshot: map['snapshot'] == null ? null : (VolumeSnapshotProperties.fromMap((map['snapshot'] as Map).cast<String, dynamic>())).input(),
      volumeRelocation: map['volumeRelocation'] == null ? null : (VolumeRelocationProperties.fromMap((map['volumeRelocation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

