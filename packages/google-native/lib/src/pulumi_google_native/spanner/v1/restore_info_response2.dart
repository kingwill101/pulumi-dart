// ignore_for_file: unused_element, unnecessary_cast

import 'backup_info_response2.dart';

/// Information about the database restore.
class RestoreInfoResponse2 {
  /// Information about the backup used to restore the database. The backup may no longer exist.
  final BackupInfoResponse2 backupInfo;

  /// The type of the restore source.
  final String sourceType;

  RestoreInfoResponse2({
    required this.backupInfo,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupInfo'] = backupInfo.toMap();
    map['sourceType'] = sourceType;
    return map;
  }

  factory RestoreInfoResponse2.fromMap(Map<String, dynamic> map) {
    return RestoreInfoResponse2(
      backupInfo: BackupInfoResponse2.fromMap(
          (map['backupInfo'] as Map).cast<String, dynamic>()),
      sourceType: map['sourceType'] as String,
    );
  }
}
