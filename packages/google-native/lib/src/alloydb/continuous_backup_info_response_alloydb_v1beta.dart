// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_info_response_alloydb_v1beta.dart';

/// ContinuousBackupInfo describes the continuous backup properties of a cluster.
class ContinuousBackupInfoResponseAlloydbV1beta {
  /// The earliest restorable time that can be restored to. Output only field.
  final String earliestRestorableTime;
  /// When ContinuousBackup was most recently enabled. Set to null if ContinuousBackup is not enabled.
  final String enabledTime;
  /// The encryption information for the WALs and backups required for ContinuousBackup.
  final EncryptionInfoResponseAlloydbV1beta encryptionInfo;
  /// Days of the week on which a continuous backup is taken. Output only field. Ignored if passed into the request.
  final List<String> schedule;

  /// Creates a new [ContinuousBackupInfoResponseAlloydbV1beta].
  /// [earliestRestorableTime] The earliest restorable time that can be restored to. Output only field.
  /// [enabledTime] When ContinuousBackup was most recently enabled. Set to null if ContinuousBackup is not enabled.
  /// [encryptionInfo] The encryption information for the WALs and backups required for ContinuousBackup.
  /// [schedule] Days of the week on which a continuous backup is taken. Output only field. Ignored if passed into the request.
  ContinuousBackupInfoResponseAlloydbV1beta({
    required this.earliestRestorableTime,
    required this.enabledTime,
    required this.encryptionInfo,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earliestRestorableTime': earliestRestorableTime,
      'enabledTime': enabledTime,
      'encryptionInfo': encryptionInfo.toMap(),
      'schedule': schedule,
    };
  }

  factory ContinuousBackupInfoResponseAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return ContinuousBackupInfoResponseAlloydbV1beta(
      earliestRestorableTime: map['earliestRestorableTime'] as String,
      enabledTime: map['enabledTime'] as String,
      encryptionInfo: EncryptionInfoResponseAlloydbV1beta.fromMap((map['encryptionInfo'] as Map).cast<String, dynamic>()),
      schedule: (map['schedule'] as List).cast<String>(),
    );
  }
}

