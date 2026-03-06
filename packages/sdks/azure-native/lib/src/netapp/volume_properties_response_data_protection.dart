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
  const VolumePropertiesResponseDataProtection({
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
      backup: (() { final guardedValue = map['backup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeBackupPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replication: (() { final guardedValue = map['replication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicationObjectResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshot: (() { final guardedValue = map['snapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeSnapshotPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeRelocation: (() { final guardedValue = map['volumeRelocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeRelocationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

