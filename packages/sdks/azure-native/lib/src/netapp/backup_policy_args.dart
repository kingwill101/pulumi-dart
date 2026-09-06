// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_backup_policy_args_doc}
/// The set of arguments for BackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_netapp_backup_policy_args_doc}
class BackupPolicyArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// Backup policy Name which uniquely identify backup policy.
  final pulumi.Input<String?>? backupPolicyName;
  /// Daily backups count to keep
  final pulumi.Input<int?>? dailyBackupsToKeep;
  /// The property to decide policy is enabled or not
  final pulumi.Input<bool?>? enabled;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Monthly backups count to keep
  final pulumi.Input<int?>? monthlyBackupsToKeep;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Weekly backups count to keep
  final pulumi.Input<int?>? weeklyBackupsToKeep;

  /// Creates a new [BackupPolicyArgs].
  /// [accountName] The name of the NetApp account
  /// [backupPolicyName] Backup policy Name which uniquely identify backup policy.
  /// [dailyBackupsToKeep] Daily backups count to keep
  /// [enabled] The property to decide policy is enabled or not
  /// [location] The geo-location where the resource lives
  /// [monthlyBackupsToKeep] Monthly backups count to keep
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [weeklyBackupsToKeep] Weekly backups count to keep
  const BackupPolicyArgs({
    required this.accountName,
    this.backupPolicyName,
    this.dailyBackupsToKeep,
    this.enabled,
    this.location,
    this.monthlyBackupsToKeep,
    required this.resourceGroupName,
    this.tags,
    this.weeklyBackupsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'backupPolicyName': ?backupPolicyName,
      'dailyBackupsToKeep': ?dailyBackupsToKeep,
      'enabled': ?enabled,
      'location': ?location,
      'monthlyBackupsToKeep': ?monthlyBackupsToKeep,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'weeklyBackupsToKeep': ?weeklyBackupsToKeep,
    };
  }

  factory BackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      backupPolicyName: (() { final guardedValue = map['backupPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dailyBackupsToKeep: (() { final guardedValue = map['dailyBackupsToKeep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monthlyBackupsToKeep: (() { final guardedValue = map['monthlyBackupsToKeep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      weeklyBackupsToKeep: (() { final guardedValue = map['weeklyBackupsToKeep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
