import 'package:pulumi/pulumi.dart';
import 'vault_policy_args.dart';

/// Provides an AWS Backup vault policy resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup vault policy using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/vaultPolicy:VaultPolicy test TestVault
/// ```
class VaultPolicy extends CustomResource {
  /// The ARN of the vault.
  late final Output<String> backupVaultArn;

  /// Name of the backup vault to add policy for.
  late final Output<String> backupVaultName;

  /// The backup vault access policy document in JSON format.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  VaultPolicy(
    String name, {
    VaultPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:backup/vaultPolicy:VaultPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupVaultArn = registerOutput<String>('backupVaultArn');
    this.backupVaultName = registerOutput<String>('backupVaultName');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
