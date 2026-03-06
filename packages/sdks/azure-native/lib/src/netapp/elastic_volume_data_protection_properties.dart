// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_volume_backup_properties.dart';
import 'elastic_volume_snapshot_properties.dart';

/// Data protection configuration option for the volume, including snapshot policies and backup.
class ElasticVolumeDataProtectionProperties {
  /// Used to configure backups on an elastic volume.
  final pulumi.Input<ElasticVolumeBackupProperties>? backup;
  /// Used to apply a snapshot policy to a volume.
  final pulumi.Input<ElasticVolumeSnapshotProperties>? snapshot;

  /// Creates a new [ElasticVolumeDataProtectionProperties].
  /// [backup] Used to configure backups on an elastic volume.
  /// [snapshot] Used to apply a snapshot policy to a volume.
  const ElasticVolumeDataProtectionProperties({
    this.backup,
    this.snapshot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': ?pulumi.Input.mapOptionalInputValue<ElasticVolumeBackupProperties, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'snapshot': ?pulumi.Input.mapOptionalInputValue<ElasticVolumeSnapshotProperties, Map<String, dynamic>>(snapshot, (value) => value.toMap()),
    };
  }

  factory ElasticVolumeDataProtectionProperties.fromMap(Map<String, dynamic> map) {
    return ElasticVolumeDataProtectionProperties(
      backup: (() { final guardedValue = map['backup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticVolumeBackupProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshot: (() { final guardedValue = map['snapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticVolumeSnapshotProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

