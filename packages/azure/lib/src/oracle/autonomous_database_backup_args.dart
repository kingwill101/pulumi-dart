// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_autonomous_database_backup_autonomous_database_backup_args_doc}
/// The set of arguments for AutonomousDatabaseBackup.
/// {@endtemplate}
/// {@macro pulumi_oracle_autonomous_database_backup_autonomous_database_backup_args_doc}
class AutonomousDatabaseBackupArgs {
  /// The azureId of the Autonomous Database that this backup is for. Changing this forces a new resource to be created.
  final pulumi.Input<String> autonomousDatabaseId;
  /// The display name of the Autonomous Database Backup. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// (Updatable) The number of days to retain the backup. Must be between 90 and 3650 days.
  final pulumi.Input<int> retentionPeriodInDays;
  /// The type of backup to create.Currently, only `LongTerm` backup operations are supported through the Oracle database At azure service. Defaults to `LongTerm`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;

  /// Creates a new [AutonomousDatabaseBackupArgs].
  /// [autonomousDatabaseId] The azureId of the Autonomous Database that this backup is for. Changing this forces a new resource to be created.
  /// [name] The display name of the Autonomous Database Backup. Changing this forces a new resource to be created.
  /// [retentionPeriodInDays] (Updatable) The number of days to retain the backup. Must be between 90 and 3650 days.
  /// [type] The type of backup to create.Currently, only `LongTerm` backup operations are supported through the Oracle database At azure service. Defaults to `LongTerm`. Changing this forces a new resource to be created.
  AutonomousDatabaseBackupArgs({
    required String autonomousDatabaseId,
    String? name,
    required int retentionPeriodInDays,
    String? type,
  }) :
      autonomousDatabaseId = pulumi.Input.asInput<String>(autonomousDatabaseId),
      name = pulumi.Input.asOptionalInput<String>(name),
      retentionPeriodInDays = pulumi.Input.asInput<int>(retentionPeriodInDays),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autonomousDatabaseId': autonomousDatabaseId,
      'name': ?name,
      'retentionPeriodInDays': retentionPeriodInDays,
      'type': ?type,
    };
  }

  factory AutonomousDatabaseBackupArgs.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseBackupArgs(
      autonomousDatabaseId: map['autonomousDatabaseId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      retentionPeriodInDays: map['retentionPeriodInDays'] as int,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

