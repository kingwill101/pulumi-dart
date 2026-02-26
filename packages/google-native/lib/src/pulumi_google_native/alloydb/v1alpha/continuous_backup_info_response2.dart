// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_info_response2.dart';

/// ContinuousBackupInfo describes the continuous backup properties of a cluster.
class ContinuousBackupInfoResponse2 {
  /// The earliest restorable time that can be restored to. Output only field.
  final String earliestRestorableTime;

  /// When ContinuousBackup was most recently enabled. Set to null if ContinuousBackup is not enabled.
  final String enabledTime;

  /// The encryption information for the WALs and backups required for ContinuousBackup.
  final EncryptionInfoResponse2 encryptionInfo;

  /// Days of the week on which a continuous backup is taken. Output only field. Ignored if passed into the request.
  final List<String> schedule;

  ContinuousBackupInfoResponse2({
    required this.earliestRestorableTime,
    required this.enabledTime,
    required this.encryptionInfo,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['earliestRestorableTime'] = earliestRestorableTime;
    map['enabledTime'] = enabledTime;
    map['encryptionInfo'] = encryptionInfo.toMap();
    map['schedule'] = schedule;
    return map;
  }

  factory ContinuousBackupInfoResponse2.fromMap(Map<String, dynamic> map) {
    return ContinuousBackupInfoResponse2(
      earliestRestorableTime: map['earliestRestorableTime'] as String,
      enabledTime: map['enabledTime'] as String,
      encryptionInfo: EncryptionInfoResponse2.fromMap(
          (map['encryptionInfo'] as Map).cast<String, dynamic>()),
      schedule: (map['schedule'] as List).cast<String>(),
    );
  }
}
