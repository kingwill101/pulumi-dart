import 'package:pulumi/pulumi.dart';
import 'vault_args.dart';

/// Provides an AWS Backup vault resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup vault using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/vault:Vault test-vault TestVault
/// ```
class Vault extends CustomResource {
  /// The ARN of the vault.
  late final Output<String> arn;

  /// A boolean that indicates that all recovery points stored in the vault are deleted so that the vault can be destroyed without error.
  late final Output<bool?> forceDestroy;

  /// The server-side encryption key that is used to protect your backups.
  late final Output<String> kmsKeyArn;

  /// Name of the backup vault to create.
  late final Output<String> name;

  /// The number of recovery points that are stored in a backup vault.
  late final Output<int> recoveryPoints;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Metadata that you can assign to help organize the resources that you create. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Vault(
    String name, {
    VaultArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:backup/vault:Vault',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.recoveryPoints = registerOutput<int>('recoveryPoints');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
