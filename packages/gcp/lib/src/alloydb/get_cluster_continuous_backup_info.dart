// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_continuous_backup_info_encryption_info.dart';

class GetClusterContinuousBackupInfo {
  /// The earliest restorable time that can be restored to. Output only field.
  final String earliestRestorableTime;
  /// When ContinuousBackup was most recently enabled. Set to null if ContinuousBackup is not enabled.
  final String enabledTime;
  /// Output only. The encryption information for the WALs and backups required for ContinuousBackup.
  final List<GetClusterContinuousBackupInfoEncryptionInfo> encryptionInfos;
  /// Days of the week on which a continuous backup is taken. Output only field. Ignored if passed into the request.
  final List<String> schedules;

  /// Creates a new [GetClusterContinuousBackupInfo].
  /// [earliestRestorableTime] The earliest restorable time that can be restored to. Output only field.
  /// [enabledTime] When ContinuousBackup was most recently enabled. Set to null if ContinuousBackup is not enabled.
  /// [encryptionInfos] Output only. The encryption information for the WALs and backups required for ContinuousBackup.
  /// [schedules] Days of the week on which a continuous backup is taken. Output only field. Ignored if passed into the request.
  GetClusterContinuousBackupInfo({
    required this.earliestRestorableTime,
    required this.enabledTime,
    required this.encryptionInfos,
    required this.schedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earliestRestorableTime': earliestRestorableTime,
      'enabledTime': enabledTime,
      'encryptionInfos': pulumi.Input.encodeList<GetClusterContinuousBackupInfoEncryptionInfo, Map<String, dynamic>>(encryptionInfos, (value) => value.toMap()),
      'schedules': schedules,
    };
  }

  factory GetClusterContinuousBackupInfo.fromMap(Map<String, dynamic> map) {
    return GetClusterContinuousBackupInfo(
      earliestRestorableTime: map['earliestRestorableTime'] as String,
      enabledTime: map['enabledTime'] as String,
      encryptionInfos: pulumi.Input.decodeList<GetClusterContinuousBackupInfoEncryptionInfo>(map['encryptionInfos'], (value) => GetClusterContinuousBackupInfoEncryptionInfo.fromMap((value as Map).cast<String, dynamic>())),
      schedules: (map['schedules'] as List).cast<String>(),
    );
  }
}

