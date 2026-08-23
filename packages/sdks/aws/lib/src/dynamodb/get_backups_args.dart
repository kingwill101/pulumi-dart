// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dynamodb_get_backups_get_backups_args_doc}
/// Arguments for getBackups.
/// {@endtemplate}
/// {@macro pulumi_dynamodb_get_backups_get_backups_args_doc}
class GetBackupsArgs {
  /// Backup type. Valid values: `USER`, `SYSTEM`, `AWS_BACKUP`, `ALL`.
  final pulumi.Input<String>? backupType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the table to list backups for.
  final pulumi.Input<String>? tableName;
  /// Only backups created after this time are listed. Time must be in RFC3339 format.
  final pulumi.Input<String>? timeRangeLowerBound;
  /// Only backups created before this time are listed. Time must be in RFC3339 format.
  final pulumi.Input<String>? timeRangeUpperBound;

  /// Creates a new [GetBackupsArgs].
  /// [backupType] Backup type. Valid values: `USER`, `SYSTEM`, `AWS_BACKUP`, `ALL`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableName] Name of the table to list backups for.
  /// [timeRangeLowerBound] Only backups created after this time are listed. Time must be in RFC3339 format.
  /// [timeRangeUpperBound] Only backups created before this time are listed. Time must be in RFC3339 format.
  const GetBackupsArgs({
    this.backupType,
    this.region,
    this.tableName,
    this.timeRangeLowerBound,
    this.timeRangeUpperBound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupType': ?backupType,
      'region': ?region,
      'tableName': ?tableName,
      'timeRangeLowerBound': ?timeRangeLowerBound,
      'timeRangeUpperBound': ?timeRangeUpperBound,
    };
  }

  factory GetBackupsArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupsArgs(
      backupType: (() { final guardedValue = map['backupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeRangeLowerBound: (() { final guardedValue = map['timeRangeLowerBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeRangeUpperBound: (() { final guardedValue = map['timeRangeUpperBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
