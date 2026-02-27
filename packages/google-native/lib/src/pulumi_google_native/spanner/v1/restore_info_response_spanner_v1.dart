// ignore_for_file: unused_element, unnecessary_cast

import 'backup_info_response_spanner_v1.dart';

/// Information about the database restore.
class RestoreInfoResponseSpannerV1 {
  /// Information about the backup used to restore the database. The backup may no longer exist.
  final BackupInfoResponseSpannerV1 backupInfo;

  /// The type of the restore source.
  final String sourceType;

  RestoreInfoResponseSpannerV1({
    required this.backupInfo,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupInfo'] = backupInfo.toMap();
    map['sourceType'] = sourceType;
    return map;
  }

  factory RestoreInfoResponseSpannerV1.fromMap(Map<String, dynamic> map) {
    return RestoreInfoResponseSpannerV1(
      backupInfo: BackupInfoResponseSpannerV1.fromMap(
          (map['backupInfo'] as Map).cast<String, dynamic>()),
      sourceType: map['sourceType'] as String,
    );
  }
}
