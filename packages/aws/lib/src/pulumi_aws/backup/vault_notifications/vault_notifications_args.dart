// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VaultNotifications.
class VaultNotificationsArgs {
  /// An array of events that indicate the status of jobs to back up resources to the backup vault.
  final Input<List<String>> backupVaultEvents;

  /// Name of the backup vault to add notifications for.
  final Input<String> backupVaultName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) that specifies the topic for a backup vault’s events
  final Input<String> snsTopicArn;

  VaultNotificationsArgs({
    required this.backupVaultEvents,
    required this.backupVaultName,
    this.region,
    required this.snsTopicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupVaultEvents'] = backupVaultEvents;
    map['backupVaultName'] = backupVaultName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['snsTopicArn'] = snsTopicArn;
    return map;
  }

  factory VaultNotificationsArgs.fromMap(Map<String, dynamic> map) {
    return VaultNotificationsArgs(
      backupVaultEvents: Input.asInput<List<String>>(map['backupVaultEvents']),
      backupVaultName: Input.asInput<String>(map['backupVaultName']),
      region: Input.asOptionalInput<String>(map['region']),
      snsTopicArn: Input.asInput<String>(map['snsTopicArn']),
    );
  }
}
