import 'package:pulumi/pulumi.dart';
import 'vault_lock_configuration_args.dart';

/// Provides an AWS Backup vault lock configuration resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup vault lock configuration using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/vaultLockConfiguration:VaultLockConfiguration test TestVault
/// ```
class VaultLockConfiguration extends CustomResource {
  /// The ARN of the vault.
  late final Output<String> backupVaultArn;

  /// Name of the backup vault to add a lock configuration for.
  late final Output<String> backupVaultName;

  /// The number of days before the lock date. If omitted creates a vault lock in `governance` mode, otherwise it will create a vault lock in `compliance` mode.
  late final Output<int?> changeableForDays;

  /// The maximum retention period that the vault retains its recovery points.
  late final Output<int?> maxRetentionDays;

  /// The minimum retention period that the vault retains its recovery points.
  late final Output<int?> minRetentionDays;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  VaultLockConfiguration(
    String name, {
    VaultLockConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:backup/vaultLockConfiguration:VaultLockConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupVaultArn = registerOutput<String>('backupVaultArn');
    this.backupVaultName = registerOutput<String>('backupVaultName');
    this.changeableForDays = registerOutput<int?>('changeableForDays');
    this.maxRetentionDays = registerOutput<int?>('maxRetentionDays');
    this.minRetentionDays = registerOutput<int?>('minRetentionDays');
    this.region = registerOutput<String>('region');
  }
}
