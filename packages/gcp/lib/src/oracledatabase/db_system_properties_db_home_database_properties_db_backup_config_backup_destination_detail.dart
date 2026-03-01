// ignore_for_file: unused_element, unnecessary_cast


class DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail {
  /// The type of the database backup destination.
  /// Possible values:
  /// NFS
  /// RECOVERY_APPLIANCE
  /// OBJECT_STORE
  /// LOCAL
  /// DBRS
  final String? type;

  /// Creates a new [DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail].
  /// [type] The type of the database backup destination.
  DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail.fromMap(Map<String, dynamic> map) {
    return DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

