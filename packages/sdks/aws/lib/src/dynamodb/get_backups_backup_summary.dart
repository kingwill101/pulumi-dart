// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackupsBackupSummary {
  /// ARN of the backup.
  final pulumi.Input<String> backupArn;
  /// Time at which the backup was created.
  final pulumi.Input<String> backupCreationDateTime;
  /// Time at which the automatic on-demand backup created by DynamoDB will expire.
  final pulumi.Input<String> backupExpiryDateTime;
  /// Name of the specified backup.
  final pulumi.Input<String> backupName;
  /// Size of the backup in bytes.
  final pulumi.Input<int> backupSizeBytes;
  /// Backup can be in one of the following states: `CREATING`, `DELETED`, `AVAILABLE`.
  final pulumi.Input<String> backupStatus;
  /// Backup type. Valid values: `USER`, `SYSTEM`, `AWS_BACKUP`, `ALL`.
  final pulumi.Input<String> backupType;
  /// ARN associated with the table.
  final pulumi.Input<String> tableArn;
  /// Unique identifier for the table.
  final pulumi.Input<String> tableId;
  /// Name of the table to list backups for.
  final pulumi.Input<String> tableName;

  /// Creates a new [GetBackupsBackupSummary].
  /// [backupArn] ARN of the backup.
  /// [backupCreationDateTime] Time at which the backup was created.
  /// [backupExpiryDateTime] Time at which the automatic on-demand backup created by DynamoDB will expire.
  /// [backupName] Name of the specified backup.
  /// [backupSizeBytes] Size of the backup in bytes.
  /// [backupStatus] Backup can be in one of the following states: `CREATING`, `DELETED`, `AVAILABLE`.
  /// [backupType] Backup type. Valid values: `USER`, `SYSTEM`, `AWS_BACKUP`, `ALL`.
  /// [tableArn] ARN associated with the table.
  /// [tableId] Unique identifier for the table.
  /// [tableName] Name of the table to list backups for.
  const GetBackupsBackupSummary({
    required this.backupArn,
    required this.backupCreationDateTime,
    required this.backupExpiryDateTime,
    required this.backupName,
    required this.backupSizeBytes,
    required this.backupStatus,
    required this.backupType,
    required this.tableArn,
    required this.tableId,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupArn': backupArn,
      'backupCreationDateTime': backupCreationDateTime,
      'backupExpiryDateTime': backupExpiryDateTime,
      'backupName': backupName,
      'backupSizeBytes': backupSizeBytes,
      'backupStatus': backupStatus,
      'backupType': backupType,
      'tableArn': tableArn,
      'tableId': tableId,
      'tableName': tableName,
    };
  }

  factory GetBackupsBackupSummary.fromMap(Map<String, dynamic> map) {
    return GetBackupsBackupSummary(
      backupArn: pulumi.Input.fromValue(map['backupArn'] as String),
      backupCreationDateTime: pulumi.Input.fromValue(map['backupCreationDateTime'] as String),
      backupExpiryDateTime: pulumi.Input.fromValue(map['backupExpiryDateTime'] as String),
      backupName: pulumi.Input.fromValue(map['backupName'] as String),
      backupSizeBytes: pulumi.Input.fromValue((map['backupSizeBytes'] as num).toInt()),
      backupStatus: pulumi.Input.fromValue(map['backupStatus'] as String),
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      tableArn: pulumi.Input.fromValue(map['tableArn'] as String),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
