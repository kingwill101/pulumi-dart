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
  const VaultNotificationsState({
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
      backupVaultArn: (() { final guardedValue = map['backupVaultArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupVaultEvents: (() { final guardedValue = map['backupVaultEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      backupVaultName: (() { final guardedValue = map['backupVaultName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snsTopicArn: (() { final guardedValue = map['snsTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
