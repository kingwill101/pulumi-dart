// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VaultNotifications resources.
class VaultNotificationsState {
  /// The ARN of the vault.
  final pulumi.Input<String>? backupVaultArn;
  /// An array of events that indicate the status of jobs to back up resources to the backup vault.
  final pulumi.Input<List<String>>? backupVaultEvents;
  /// Name of the backup vault to add notifications for.
  final pulumi.Input<String>? backupVaultName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) that specifies the topic for a backup vault’s events
  final pulumi.Input<String>? snsTopicArn;

  /// Creates a new [VaultNotificationsState].
  /// [backupVaultArn] The ARN of the vault.
  /// [backupVaultEvents] An array of events that indicate the status of jobs to back up resources to the backup vault.
  /// [backupVaultName] Name of the backup vault to add notifications for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snsTopicArn] The Amazon Resource Name (ARN) that specifies the topic for a backup vault’s events
  VaultNotificationsState({
    this.backupVaultArn,
    this.backupVaultEvents,
    this.backupVaultName,
    this.region,
    this.snsTopicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVaultArn': ?backupVaultArn,
      'backupVaultEvents': ?backupVaultEvents,
      'backupVaultName': ?backupVaultName,
      'region': ?region,
      'snsTopicArn': ?snsTopicArn,
    };
  }

  factory VaultNotificationsState.fromMap(Map<String, dynamic> map) {
    return VaultNotificationsState(
      backupVaultArn: map['backupVaultArn'] == null ? null : ((map['backupVaultArn'] as String).input()).input(),
      backupVaultEvents: map['backupVaultEvents'] == null ? null : (((map['backupVaultEvents'] as List).cast<String>()).input()).input(),
      backupVaultName: map['backupVaultName'] == null ? null : ((map['backupVaultName'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      snsTopicArn: map['snsTopicArn'] == null ? null : ((map['snsTopicArn'] as String).input()).input(),
    );
  }
}

