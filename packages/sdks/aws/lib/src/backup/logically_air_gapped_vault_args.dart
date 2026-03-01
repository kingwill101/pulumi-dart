// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logically_air_gapped_vault_timeouts.dart';

/// {@template pulumi_backup_logically_air_gapped_vault_logically_air_gapped_vault_args_doc}
/// The set of arguments for LogicallyAirGappedVault.
/// {@endtemplate}
/// {@macro pulumi_backup_logically_air_gapped_vault_logically_air_gapped_vault_args_doc}
class LogicallyAirGappedVaultArgs {
  /// The AWS KMS key identifier (ARN) used to encrypt the backups in the logically air-gapped vault.
  final pulumi.Input<String>? encryptionKeyArn;
  /// Maximum retention period that the Logically Air Gapped Backup Vault retains recovery points.
  final pulumi.Input<int> maxRetentionDays;
  /// Minimum retention period that the Logically Air Gapped Backup Vault retains recovery points.
  final pulumi.Input<int> minRetentionDays;
  /// Name of the Logically Air Gapped Backup Vault to create.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Metadata that you can assign to help organize the resources that you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<LogicallyAirGappedVaultTimeouts>? timeouts;

  /// Creates a new [LogicallyAirGappedVaultArgs].
  /// [encryptionKeyArn] The AWS KMS key identifier (ARN) used to encrypt the backups in the logically air-gapped vault.
  /// [maxRetentionDays] Maximum retention period that the Logically Air Gapped Backup Vault retains recovery points.
  /// [minRetentionDays] Minimum retention period that the Logically Air Gapped Backup Vault retains recovery points.
  /// [name] Name of the Logically Air Gapped Backup Vault to create.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Metadata that you can assign to help organize the resources that you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  LogicallyAirGappedVaultArgs({
    pulumi.Output<String>? encryptionKeyArn,
    required pulumi.Output<int> maxRetentionDays,
    required pulumi.Output<int> minRetentionDays,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<LogicallyAirGappedVaultTimeouts>? timeouts,
  }) :
      encryptionKeyArn = pulumi.Input.asOptionalInput<String>(encryptionKeyArn),
      maxRetentionDays = pulumi.Input.asInput<int>(maxRetentionDays),
      minRetentionDays = pulumi.Input.asInput<int>(minRetentionDays),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<LogicallyAirGappedVaultTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionKeyArn': ?encryptionKeyArn,
      'maxRetentionDays': maxRetentionDays,
      'minRetentionDays': minRetentionDays,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<LogicallyAirGappedVaultTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory LogicallyAirGappedVaultArgs.fromMap(Map<String, dynamic> map) {
    return LogicallyAirGappedVaultArgs(
      encryptionKeyArn: map['encryptionKeyArn'] == null ? null : pulumi.Output.create<String>(map['encryptionKeyArn'] as String),
      maxRetentionDays: pulumi.Output.create<int>(map['maxRetentionDays'] as int),
      minRetentionDays: pulumi.Output.create<int>(map['minRetentionDays'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<LogicallyAirGappedVaultTimeouts>(LogicallyAirGappedVaultTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

