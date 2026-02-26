// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_continuous_backup_info_encryption_info/cluster_continuous_backup_info_encryption_info.dart';

class ClusterContinuousBackupInfo {
  /// (Output)
  /// The earliest restorable time that can be restored to. Output only field.
  final String? earliestRestorableTime;

  /// (Output)
  /// When ContinuousBackup was most recently enabled. Set to null if ContinuousBackup is not enabled.
  final String? enabledTime;

  /// (Output)
  /// Output only. The encryption information for the WALs and backups required for ContinuousBackup.
  /// Structure is documented below.
  final List<ClusterContinuousBackupInfoEncryptionInfo>? encryptionInfos;

  /// (Output)
  /// Days of the week on which a continuous backup is taken. Output only field. Ignored if passed into the request.
  final List<String>? schedules;

  ClusterContinuousBackupInfo({
    this.earliestRestorableTime,
    this.enabledTime,
    this.encryptionInfos,
    this.schedules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final earliestRestorableTimeValue = earliestRestorableTime;
    if (earliestRestorableTimeValue != null) {
      map['earliestRestorableTime'] = earliestRestorableTimeValue;
    }
    final enabledTimeValue = enabledTime;
    if (enabledTimeValue != null) {
      map['enabledTime'] = enabledTimeValue;
    }
    final encryptionInfosValue = encryptionInfos;
    if (encryptionInfosValue != null) {
      map['encryptionInfos'] = Input.encodeList<
          ClusterContinuousBackupInfoEncryptionInfo,
          Map<String, dynamic>>(encryptionInfosValue, (value) => value.toMap());
    }
    final schedulesValue = schedules;
    if (schedulesValue != null) {
      map['schedules'] = schedulesValue;
    }
    return map;
  }

  factory ClusterContinuousBackupInfo.fromMap(Map<String, dynamic> map) {
    return ClusterContinuousBackupInfo(
      earliestRestorableTime: map['earliestRestorableTime'] == null
          ? null
          : map['earliestRestorableTime'] as String,
      enabledTime:
          map['enabledTime'] == null ? null : map['enabledTime'] as String,
      encryptionInfos: map['encryptionInfos'] == null
          ? null
          : Input.decodeList<ClusterContinuousBackupInfoEncryptionInfo>(
              map['encryptionInfos'],
              (value) => ClusterContinuousBackupInfoEncryptionInfo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      schedules: map['schedules'] == null
          ? null
          : (map['schedules'] as List).cast<String>(),
    );
  }
}
