// ignore_for_file: unused_element, unnecessary_cast

class GetClusterManagedBackupSource {
  /// Example: 'projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}'.
  final String backup;

  /// Creates a new [GetClusterManagedBackupSource].
  /// [backup] Example: 'projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}'.
  GetClusterManagedBackupSource({
    required this.backup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backup'] = backup;
    return map;
  }

  factory GetClusterManagedBackupSource.fromMap(Map<String, dynamic> map) {
    return GetClusterManagedBackupSource(
      backup: map['backup'] as String,
    );
  }
}
