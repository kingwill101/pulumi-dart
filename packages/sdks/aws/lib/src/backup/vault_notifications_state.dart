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
    pulumi.Output<String>? backupVaultArn,
    pulumi.Output<List<String>>? backupVaultEvents,
    pulumi.Output<String>? backupVaultName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? snsTopicArn,
  }) :
      backupVaultArn = pulumi.Input.asOptionalInput<String>(backupVaultArn),
      backupVaultEvents = pulumi.Input.asOptionalInput<List<String>>(backupVaultEvents),
      backupVaultName = pulumi.Input.asOptionalInput<String>(backupVaultName),
      region = pulumi.Input.asOptionalInput<String>(region),
      snsTopicArn = pulumi.Input.asOptionalInput<String>(snsTopicArn);

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
      backupVaultArn: map['backupVaultArn'] == null ? null : pulumi.Output.create<String>(map['backupVaultArn'] as String),
      backupVaultEvents: map['backupVaultEvents'] == null ? null : pulumi.Output.create<List<String>>((map['backupVaultEvents'] as List).cast<String>()),
      backupVaultName: map['backupVaultName'] == null ? null : pulumi.Output.create<String>(map['backupVaultName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      snsTopicArn: map['snsTopicArn'] == null ? null : pulumi.Output.create<String>(map['snsTopicArn'] as String),
    );
  }
}

