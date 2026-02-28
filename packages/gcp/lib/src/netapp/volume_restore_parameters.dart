// ignore_for_file: unused_element, unnecessary_cast

class VolumeRestoreParameters {
  /// Full name of the backup to use for creating this volume.
  /// `source_snapshot` and `source_backup` cannot be used simultaneously.
  /// Format: `projects/{{project}}/locations/{{location}}/backupVaults/{{backupVaultId}}/backups/{{backup}}`.
  final String? sourceBackup;

  /// Full name of the snapshot to use for creating this volume.
  /// `source_snapshot` and `source_backup` cannot be used simultaneously.
  /// Format: `projects/{{project}}/locations/{{location}}/volumes/{{volume}}/snapshots/{{snapshot}}`.
  final String? sourceSnapshot;

  /// Creates a new [VolumeRestoreParameters].
  /// [sourceBackup] Full name of the backup to use for creating this volume.
  /// [sourceSnapshot] Full name of the snapshot to use for creating this volume.
  VolumeRestoreParameters({
    this.sourceBackup,
    this.sourceSnapshot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sourceBackupValue = sourceBackup;
    if (sourceBackupValue != null) {
      map['sourceBackup'] = sourceBackupValue;
    }
    final sourceSnapshotValue = sourceSnapshot;
    if (sourceSnapshotValue != null) {
      map['sourceSnapshot'] = sourceSnapshotValue;
    }
    return map;
  }

  factory VolumeRestoreParameters.fromMap(Map<String, dynamic> map) {
    return VolumeRestoreParameters(
      sourceBackup:
          map['sourceBackup'] == null ? null : map['sourceBackup'] as String,
      sourceSnapshot: map['sourceSnapshot'] == null
          ? null
          : map['sourceSnapshot'] as String,
    );
  }
}
