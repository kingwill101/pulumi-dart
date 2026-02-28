// ignore_for_file: unused_element, unnecessary_cast


class InstanceManagedBackupSource {
  /// Example: `projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}`.
  final String backup;

  /// Creates a new [InstanceManagedBackupSource].
  /// [backup] Example: `projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}`.
  InstanceManagedBackupSource({
    required this.backup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': backup,
    };
  }

  factory InstanceManagedBackupSource.fromMap(Map<String, dynamic> map) {
    return InstanceManagedBackupSource(
      backup: map['backup'] as String,
    );
  }
}

