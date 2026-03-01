// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_backup_policy_backup_policy_args_doc}
/// The set of arguments for BackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_netapp_backup_policy_backup_policy_args_doc}
class BackupPolicyArgs {
  /// The name of the NetApp account in which the NetApp Policy should be created under. Changing this forces a new resource to be created.
  final pulumi.Input<String> accountName;
  /// Provides the number of daily backups to keep, defaults to `2` which is the minimum, maximum is 1019.
  final pulumi.Input<int>? dailyBackupsToKeep;
  /// Whether the Backup Policy is enabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Provides the number of monthly backups to keep, defaults to `1`. The minimum is `0` and the maximum is `1019`.
  ///
  /// > **Note:** Currently, the combined (daily + weekly + monthy) retention counts cannot exceed 1019.
  final pulumi.Input<int>? monthlyBackupsToKeep;
  /// The name of the NetApp Backup Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group where the NetApp Backup Policy should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Provides the number of weekly backups to keep, defaults to `1`. The minimum is `0` and the maximum is `1019`.
  final pulumi.Input<int>? weeklyBackupsToKeep;

  /// Creates a new [BackupPolicyArgs].
  /// [accountName] The name of the NetApp account in which the NetApp Policy should be created under. Changing this forces a new resource to be created.
  /// [dailyBackupsToKeep] Provides the number of daily backups to keep, defaults to `2` which is the minimum, maximum is 1019.
  /// [enabled] Whether the Backup Policy is enabled. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [monthlyBackupsToKeep] Provides the number of monthly backups to keep, defaults to `1`. The minimum is `0` and the maximum is `1019`.
  /// [name] The name of the NetApp Backup Policy. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the NetApp Backup Policy should be created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [weeklyBackupsToKeep] Provides the number of weekly backups to keep, defaults to `1`. The minimum is `0` and the maximum is `1019`.
  BackupPolicyArgs({
    required String accountName,
    int? dailyBackupsToKeep,
    bool? enabled,
    String? location,
    int? monthlyBackupsToKeep,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
    int? weeklyBackupsToKeep,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dailyBackupsToKeep = pulumi.Input.asOptionalInput<int>(dailyBackupsToKeep),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      monthlyBackupsToKeep = pulumi.Input.asOptionalInput<int>(monthlyBackupsToKeep),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      weeklyBackupsToKeep = pulumi.Input.asOptionalInput<int>(weeklyBackupsToKeep);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dailyBackupsToKeep': ?dailyBackupsToKeep,
      'enabled': ?enabled,
      'location': ?location,
      'monthlyBackupsToKeep': ?monthlyBackupsToKeep,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'weeklyBackupsToKeep': ?weeklyBackupsToKeep,
    };
  }

  factory BackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyArgs(
      accountName: map['accountName'] as String,
      dailyBackupsToKeep: map['dailyBackupsToKeep'] == null ? null : map['dailyBackupsToKeep'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      monthlyBackupsToKeep: map['monthlyBackupsToKeep'] == null ? null : map['monthlyBackupsToKeep'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      weeklyBackupsToKeep: map['weeklyBackupsToKeep'] == null ? null : map['weeklyBackupsToKeep'] as int,
    );
  }
}

