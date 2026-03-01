// ignore_for_file: unused_element, unnecessary_cast

import 'elastic_volume_backup_properties_response.dart';
import 'elastic_volume_snapshot_properties_response.dart';

/// Data protection configuration option for the volume, including snapshot policies and backup.
class ElasticVolumeDataProtectionPropertiesResponse {
  /// Used to configure backups on an elastic volume.
  final ElasticVolumeBackupPropertiesResponse? backup;
  /// Used to apply a snapshot policy to a volume.
  final ElasticVolumeSnapshotPropertiesResponse? snapshot;

  /// Creates a new [ElasticVolumeDataProtectionPropertiesResponse].
  /// [backup] Used to configure backups on an elastic volume.
  /// [snapshot] Used to apply a snapshot policy to a volume.
  ElasticVolumeDataProtectionPropertiesResponse({
    this.backup,
    this.snapshot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': ?backup == null ? null : backup!.toMap(),
      'snapshot': ?snapshot == null ? null : snapshot!.toMap(),
    };
  }

  factory ElasticVolumeDataProtectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticVolumeDataProtectionPropertiesResponse(
      backup: map['backup'] == null ? null : ElasticVolumeBackupPropertiesResponse.fromMap((map['backup'] as Map).cast<String, dynamic>()),
      snapshot: map['snapshot'] == null ? null : ElasticVolumeSnapshotPropertiesResponse.fromMap((map['snapshot'] as Map).cast<String, dynamic>()),
    );
  }
}

