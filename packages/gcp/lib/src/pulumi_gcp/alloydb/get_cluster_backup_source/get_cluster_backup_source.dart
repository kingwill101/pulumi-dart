// ignore_for_file: unused_element, unnecessary_cast

class GetClusterBackupSource {
  /// The name of the backup resource.
  final String backupName;

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
