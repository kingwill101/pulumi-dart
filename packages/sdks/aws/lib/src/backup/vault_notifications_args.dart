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
    required pulumi.Output<List<String>> backupVaultEvents,
    required pulumi.Output<String> backupVaultName,
    pulumi.Output<String>? region,
    required pulumi.Output<String> snsTopicArn,
  }) :
      backupVaultEvents = pulumi.Input.asInput<List<String>>(backupVaultEvents),
      backupVaultName = pulumi.Input.asInput<String>(backupVaultName),
      region = pulumi.Input.asOptionalInput<String>(region),
      snsTopicArn = pulumi.Input.asInput<String>(snsTopicArn);

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
      backupVaultEvents: pulumi.Output.create<List<String>>((map['backupVaultEvents'] as List).cast<String>()),
      backupVaultName: pulumi.Output.create<String>(map['backupVaultName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      snsTopicArn: pulumi.Output.create<String>(map['snsTopicArn'] as String),
    );
  }
}

