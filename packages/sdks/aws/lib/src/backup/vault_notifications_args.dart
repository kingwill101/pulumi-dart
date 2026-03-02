// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backup_vault_notifications_vault_notifications_args_doc}
/// The set of arguments for VaultNotifications.
/// {@endtemplate}
/// {@macro pulumi_backup_vault_notifications_vault_notifications_args_doc}
class VaultNotificationsArgs {
  /// An array of events that indicate the status of jobs to back up resources to the backup vault.
  final pulumi.Input<List<String>> backupVaultEvents;
  /// Name of the backup vault to add notifications for.
  final pulumi.Input<String> backupVaultName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) that specifies the topic for a backup vault’s events
  final pulumi.Input<String> snsTopicArn;

  /// Creates a new [VaultNotificationsArgs].
  /// [backupVaultEvents] An array of events that indicate the status of jobs to back up resources to the backup vault.
  /// [backupVaultName] Name of the backup vault to add notifications for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snsTopicArn] The Amazon Resource Name (ARN) that specifies the topic for a backup vault’s events
  VaultNotificationsArgs({
    required this.backupVaultEvents,
    required this.backupVaultName,
    this.region,
    required this.snsTopicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVaultEvents': backupVaultEvents,
      'backupVaultName': backupVaultName,
      'region': ?region,
      'snsTopicArn': snsTopicArn,
    };
  }

  factory VaultNotificationsArgs.fromMap(Map<String, dynamic> map) {
    return VaultNotificationsArgs(
      backupVaultEvents: ((map['backupVaultEvents'] as List).cast<String>()).input(),
      backupVaultName: (map['backupVaultName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      snsTopicArn: (map['snsTopicArn'] as String).input(),
    );
  }
}

