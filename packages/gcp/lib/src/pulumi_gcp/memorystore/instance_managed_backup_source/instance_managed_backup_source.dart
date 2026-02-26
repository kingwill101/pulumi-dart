// ignore_for_file: unused_element, unnecessary_cast

class InstanceManagedBackupSource {
  /// Example: `projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}`.
  final String backup;

  InstanceManagedBackupSource({
    required this.backup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backup'] = backup;
    return map;
  }

  factory InstanceManagedBackupSource.fromMap(Map<String, dynamic> map) {
    return InstanceManagedBackupSource(
      backup: map['backup'] as String,
    );
  }
}
