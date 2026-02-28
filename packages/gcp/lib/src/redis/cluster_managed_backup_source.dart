// ignore_for_file: unused_element, unnecessary_cast

class ClusterManagedBackupSource {
  /// Example: `projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}`.
  final String backup;

  /// Creates a new [ClusterManagedBackupSource].
  /// [backup] Example: `projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}`.
  ClusterManagedBackupSource({
    required this.backup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backup'] = backup;
    return map;
  }

  factory ClusterManagedBackupSource.fromMap(Map<String, dynamic> map) {
    return ClusterManagedBackupSource(
      backup: map['backup'] as String,
    );
  }
}
