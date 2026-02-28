// ignore_for_file: unused_element, unnecessary_cast

class GetClusterBackupSource {
  /// The name of the backup resource.
  final String backupName;

  /// Creates a new [GetClusterBackupSource].
  /// [backupName] The name of the backup resource.
  GetClusterBackupSource({
    required this.backupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupName'] = backupName;
    return map;
  }

  factory GetClusterBackupSource.fromMap(Map<String, dynamic> map) {
    return GetClusterBackupSource(
      backupName: map['backupName'] as String,
    );
  }
}
