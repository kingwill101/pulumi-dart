// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logically_air_gapped_vault_timeouts.dart';

/// Input properties used for looking up and filtering LogicallyAirGappedVault resources.
class LogicallyAirGappedVaultState {
  /// The ARN of the Logically Air Gapped Backup Vault.
  final pulumi.Input<String>? arn;
  /// The AWS KMS key identifier (ARN) used to encrypt the backups in the logically air-gapped vault.
  final pulumi.Input<String>? encryptionKeyArn;
  /// Maximum retention period that the Logically Air Gapped Backup Vault retains recovery points.
  final pulumi.Input<int>? maxRetentionDays;
  /// Minimum retention period that the Logically Air Gapped Backup Vault retains recovery points.
  final pulumi.Input<int>? minRetentionDays;
  /// Name of the Logically Air Gapped Backup Vault to create.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Metadata that you can assign to help organize the resources that you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<LogicallyAirGappedVaultTimeouts>? timeouts;

  /// Creates a new [LogicallyAirGappedVaultState].
  /// [arn] The ARN of the Logically Air Gapped Backup Vault.
  /// [encryptionKeyArn] The AWS KMS key identifier (ARN) used to encrypt the backups in the logically air-gapped vault.
  /// [maxRetentionDays] Maximum retention period that the Logically Air Gapped Backup Vault retains recovery points.
  /// [minRetentionDays] Minimum retention period that the Logically Air Gapped Backup Vault retains recovery points.
  /// [name] Name of the Logically Air Gapped Backup Vault to create.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Metadata that you can assign to help organize the resources that you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  LogicallyAirGappedVaultState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? encryptionKeyArn,
    pulumi.Output<int>? maxRetentionDays,
    pulumi.Output<int>? minRetentionDays,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<LogicallyAirGappedVaultTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      encryptionKeyArn = pulumi.Input.asOptionalInput<String>(encryptionKeyArn),
      maxRetentionDays = pulumi.Input.asOptionalInput<int>(maxRetentionDays),
      minRetentionDays = pulumi.Input.asOptionalInput<int>(minRetentionDays),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<LogicallyAirGappedVaultTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'encryptionKeyArn': ?encryptionKeyArn,
      'maxRetentionDays': ?maxRetentionDays,
      'minRetentionDays': ?minRetentionDays,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<LogicallyAirGappedVaultTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory LogicallyAirGappedVaultState.fromMap(Map<String, dynamic> map) {
    return LogicallyAirGappedVaultState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      encryptionKeyArn: map['encryptionKeyArn'] == null ? null : pulumi.Output.create<String>(map['encryptionKeyArn'] as String),
      maxRetentionDays: map['maxRetentionDays'] == null ? null : pulumi.Output.create<int>(map['maxRetentionDays'] as int),
      minRetentionDays: map['minRetentionDays'] == null ? null : pulumi.Output.create<int>(map['minRetentionDays'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<LogicallyAirGappedVaultTimeouts>(LogicallyAirGappedVaultTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

