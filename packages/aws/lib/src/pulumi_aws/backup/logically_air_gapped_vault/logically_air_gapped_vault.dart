import 'package:pulumi/pulumi.dart' as pulumi;
import '../logically_air_gapped_vault_timeouts/logically_air_gapped_vault_timeouts.dart';
import 'logically_air_gapped_vault_args.dart';

/// Resource for managing an AWS Backup Logically Air Gapped Vault.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup Logically Air Gapped Vault using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/logicallyAirGappedVault:LogicallyAirGappedVault example lag-example-vault
/// ```
class LogicallyAirGappedVault extends pulumi.CustomResource {
  /// The ARN of the Logically Air Gapped Backup Vault.
  late final pulumi.Output<String> arn;

  /// The AWS KMS key identifier (ARN) used to encrypt the backups in the logically air-gapped vault.
  late final pulumi.Output<String> encryptionKeyArn;

  /// Maximum retention period that the Logically Air Gapped Backup Vault retains recovery points.
  late final pulumi.Output<int> maxRetentionDays;

  /// Minimum retention period that the Logically Air Gapped Backup Vault retains recovery points.
  late final pulumi.Output<int> minRetentionDays;

  /// Name of the Logically Air Gapped Backup Vault to create.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Metadata that you can assign to help organize the resources that you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<LogicallyAirGappedVaultTimeouts?> timeouts;

  LogicallyAirGappedVault(
    String name, {
    LogicallyAirGappedVaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/logicallyAirGappedVault:LogicallyAirGappedVault',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.encryptionKeyArn = registerOutput<String>('encryptionKeyArn');
    this.maxRetentionDays = registerOutput<int>('maxRetentionDays');
    this.minRetentionDays = registerOutput<int>('minRetentionDays');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<LogicallyAirGappedVaultTimeouts?>('timeouts');
  }
}
