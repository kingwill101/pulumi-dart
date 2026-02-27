// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../logically_air_gapped_vault_timeouts/logically_air_gapped_vault_timeouts.dart';

/// The set of arguments for LogicallyAirGappedVault.
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

  LogicallyAirGappedVaultArgs({
    this.encryptionKeyArn,
    required this.maxRetentionDays,
    required this.minRetentionDays,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionKeyArnValue = encryptionKeyArn;
    if (encryptionKeyArnValue != null) {
      map['encryptionKeyArn'] = encryptionKeyArnValue;
    }
    map['maxRetentionDays'] = maxRetentionDays;
    map['minRetentionDays'] = minRetentionDays;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          LogicallyAirGappedVaultTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory LogicallyAirGappedVaultArgs.fromMap(Map<String, dynamic> map) {
    return LogicallyAirGappedVaultArgs(
      encryptionKeyArn:
          pulumi.Input.asOptionalInput<String>(map['encryptionKeyArn']),
      maxRetentionDays: pulumi.Input.asInput<int>(map['maxRetentionDays']),
      minRetentionDays: pulumi.Input.asInput<int>(map['minRetentionDays']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<LogicallyAirGappedVaultTimeouts>(
          map['timeouts']),
    );
  }
}
