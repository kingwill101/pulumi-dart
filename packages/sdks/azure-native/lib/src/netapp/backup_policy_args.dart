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
  final pulumi.Input<String>? backupPolicyName;
  /// Daily backups count to keep
  final pulumi.Input<int>? dailyBackupsToKeep;
  /// The property to decide policy is enabled or not
  final pulumi.Input<bool>? enabled;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Monthly backups count to keep
  final pulumi.Input<int>? monthlyBackupsToKeep;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Weekly backups count to keep
  final pulumi.Input<int>? weeklyBackupsToKeep;

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
  BackupPolicyArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? backupPolicyName,
    pulumi.Output<int>? dailyBackupsToKeep,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? location,
    pulumi.Output<int>? monthlyBackupsToKeep,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? weeklyBackupsToKeep,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      backupPolicyName = pulumi.Input.asOptionalInput<String>(backupPolicyName),
      dailyBackupsToKeep = pulumi.Input.asOptionalInput<int>(dailyBackupsToKeep),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      monthlyBackupsToKeep = pulumi.Input.asOptionalInput<int>(monthlyBackupsToKeep),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      weeklyBackupsToKeep = pulumi.Input.asOptionalInput<int>(weeklyBackupsToKeep);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      backupPolicyName: map['backupPolicyName'] == null ? null : pulumi.Output.create<String>(map['backupPolicyName'] as String),
      dailyBackupsToKeep: map['dailyBackupsToKeep'] == null ? null : pulumi.Output.create<int>(map['dailyBackupsToKeep'] as int),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      monthlyBackupsToKeep: map['monthlyBackupsToKeep'] == null ? null : pulumi.Output.create<int>(map['monthlyBackupsToKeep'] as int),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      weeklyBackupsToKeep: map['weeklyBackupsToKeep'] == null ? null : pulumi.Output.create<int>(map['weeklyBackupsToKeep'] as int),
    );
  }
}

