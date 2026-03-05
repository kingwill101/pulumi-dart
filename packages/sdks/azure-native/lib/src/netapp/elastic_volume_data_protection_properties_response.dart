// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_volume_backup_properties_response.dart';
import 'elastic_volume_snapshot_properties_response.dart';

/// Data protection configuration option for the volume, including snapshot policies and backup.
class ElasticVolumeDataProtectionPropertiesResponse {
  /// Used to configure backups on an elastic volume.
  final pulumi.Input<ElasticVolumeBackupPropertiesResponse>? backup;
  /// Used to apply a snapshot policy to a volume.
  final pulumi.Input<ElasticVolumeSnapshotPropertiesResponse>? snapshot;

  /// Creates a new [ElasticVolumeDataProtectionPropertiesResponse].
  /// [backup] Used to configure backups on an elastic volume.
  /// [snapshot] Used to apply a snapshot policy to a volume.
  ElasticVolumeDataProtectionPropertiesResponse({
    this.backup,
    this.snapshot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': ?pulumi.Input.mapOptionalInputValue<ElasticVolumeBackupPropertiesResponse, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'snapshot': ?pulumi.Input.mapOptionalInputValue<ElasticVolumeSnapshotPropertiesResponse, Map<String, dynamic>>(snapshot, (value) => value.toMap()),
    };
  }

  factory ElasticVolumeDataProtectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticVolumeDataProtectionPropertiesResponse(
      backup: (() { final guardedValue = map['backup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticVolumeBackupPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshot: (() { final guardedValue = map['snapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticVolumeSnapshotPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

