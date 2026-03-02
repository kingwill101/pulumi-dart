// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_object_response.dart';
import 'volume_backup_properties_response.dart';
import 'volume_relocation_properties_response.dart';
import 'volume_snapshot_properties_response.dart';

/// DataProtection type volumes include an object containing details of the replication
class VolumePropertiesResponseDataProtection {
  /// Backup Properties
  final pulumi.Input<VolumeBackupPropertiesResponse>? backup;
  /// Replication properties
  final pulumi.Input<ReplicationObjectResponse>? replication;
  /// Snapshot properties.
  final pulumi.Input<VolumeSnapshotPropertiesResponse>? snapshot;
  /// VolumeRelocation properties
  final pulumi.Input<VolumeRelocationPropertiesResponse>? volumeRelocation;

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
      'backup': ?pulumi.Input.mapOptionalInputValue<VolumeBackupPropertiesResponse, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'replication': ?pulumi.Input.mapOptionalInputValue<ReplicationObjectResponse, Map<String, dynamic>>(replication, (value) => value.toMap()),
      'snapshot': ?pulumi.Input.mapOptionalInputValue<VolumeSnapshotPropertiesResponse, Map<String, dynamic>>(snapshot, (value) => value.toMap()),
      'volumeRelocation': ?pulumi.Input.mapOptionalInputValue<VolumeRelocationPropertiesResponse, Map<String, dynamic>>(volumeRelocation, (value) => value.toMap()),
    };
  }

  factory VolumePropertiesResponseDataProtection.fromMap(Map<String, dynamic> map) {
    return VolumePropertiesResponseDataProtection(
      backup: map['backup'] == null ? null : (VolumeBackupPropertiesResponse.fromMap((map['backup']! as Map).cast<String, dynamic>())).input(),
      replication: map['replication'] == null ? null : (ReplicationObjectResponse.fromMap((map['replication']! as Map).cast<String, dynamic>())).input(),
      snapshot: map['snapshot'] == null ? null : (VolumeSnapshotPropertiesResponse.fromMap((map['snapshot']! as Map).cast<String, dynamic>())).input(),
      volumeRelocation: map['volumeRelocation'] == null ? null : (VolumeRelocationPropertiesResponse.fromMap((map['volumeRelocation']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

