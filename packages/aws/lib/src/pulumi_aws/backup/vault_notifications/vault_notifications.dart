import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_notifications_args.dart';

/// Provides an AWS Backup vault notifications resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup vault notifications using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/vaultNotifications:VaultNotifications test TestVault
/// ```
class VaultNotifications extends pulumi.CustomResource {
  /// The ARN of the vault.
  late final pulumi.Output<String> backupVaultArn;

  /// An array of events that indicate the status of jobs to back up resources to the backup vault.
  late final pulumi.Output<List<String>> backupVaultEvents;

  /// Name of the backup vault to add notifications for.
  late final pulumi.Output<String> backupVaultName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) that specifies the topic for a backup vault’s events
  late final pulumi.Output<String> snsTopicArn;

  VaultNotifications(
    String name, {
    VaultNotificationsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/vaultNotifications:VaultNotifications',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupVaultArn = registerOutput<String>('backupVaultArn');
    this.backupVaultEvents = registerOutput<List<String>>('backupVaultEvents');
    this.backupVaultName = registerOutput<String>('backupVaultName');
    this.region = registerOutput<String>('region');
    this.snsTopicArn = registerOutput<String>('snsTopicArn');
  }
}
