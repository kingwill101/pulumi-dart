// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule.dart';
import 'database_backup_setting.dart';

/// {@template pulumi_web_web_app_backup_configuration_args_doc}
/// The set of arguments for WebAppBackupConfiguration.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_backup_configuration_args_doc}
class WebAppBackupConfigurationArgs {
  /// Name of the backup.
  final pulumi.Input<String>? backupName;
  /// Schedule for the backup if it is executed periodically.
  final pulumi.Input<BackupSchedule>? backupSchedule;
  /// Databases included in the backup.
  final pulumi.Input<List<DatabaseBackupSetting>>? databases;
  /// True if the backup schedule is enabled (must be included in that case), false if the backup schedule should be disabled.
  final pulumi.Input<bool>? enabled;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// SAS URL to the container.
  final pulumi.Input<String> storageAccountUrl;

  /// Creates a new [WebAppBackupConfigurationArgs].
  /// [backupName] Name of the backup.
  /// [backupSchedule] Schedule for the backup if it is executed periodically.
  /// [databases] Databases included in the backup.
  /// [enabled] True if the backup schedule is enabled (must be included in that case), false if the backup schedule should be disabled.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [storageAccountUrl] SAS URL to the container.
  WebAppBackupConfigurationArgs({
    String? backupName,
    BackupSchedule? backupSchedule,
    List<DatabaseBackupSetting>? databases,
    bool? enabled,
    String? kind,
    required String name,
    required String resourceGroupName,
    required String storageAccountUrl,
  }) :
      backupName = pulumi.Input.asOptionalInput<String>(backupName),
      backupSchedule = pulumi.Input.asOptionalInput<BackupSchedule>(backupSchedule),
      databases = pulumi.Input.asOptionalInput<List<DatabaseBackupSetting>>(databases),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageAccountUrl = pulumi.Input.asInput<String>(storageAccountUrl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupName': ?backupName,
      'backupSchedule': ?pulumi.Input.mapOptionalInputValue<BackupSchedule, Map<String, dynamic>>(backupSchedule, (value) => value.toMap()),
      'databases': ?pulumi.Input.mapOptionalInputValue<List<DatabaseBackupSetting>, List<Map<String, dynamic>>>(databases, (value) => pulumi.Input.encodeList<DatabaseBackupSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'storageAccountUrl': storageAccountUrl,
    };
  }

  factory WebAppBackupConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return WebAppBackupConfigurationArgs(
      backupName: map['backupName'] == null ? null : map['backupName'] as String,
      backupSchedule: map['backupSchedule'] == null ? null : BackupSchedule.fromMap((map['backupSchedule'] as Map).cast<String, dynamic>()),
      databases: map['databases'] == null ? null : pulumi.Input.decodeList<DatabaseBackupSetting>(map['databases'], (value) => DatabaseBackupSetting.fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      storageAccountUrl: map['storageAccountUrl'] as String,
    );
  }
}

