// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceManagedBackupSource {
  /// Example: 'projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}'.
  final String backup;

  /// Creates a new [GetInstanceManagedBackupSource].
  /// [backup] Example: 'projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}'.
  GetInstanceManagedBackupSource({
    required this.backup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backup'] = backup;
    return map;
  }

  factory GetInstanceManagedBackupSource.fromMap(Map<String, dynamic> map) {
    return GetInstanceManagedBackupSource(
      backup: map['backup'] as String,
    );
  }
}
