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
    this.arn,
    this.encryptionKeyArn,
    this.maxRetentionDays,
    this.minRetentionDays,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

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
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            LogicallyAirGappedVaultTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory LogicallyAirGappedVaultState.fromMap(Map<String, dynamic> map) {
    return LogicallyAirGappedVaultState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionKeyArn: (() {
        final guardedValue = map['encryptionKeyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxRetentionDays: (() {
        final guardedValue = map['maxRetentionDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minRetentionDays: (() {
        final guardedValue = map['minRetentionDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LogicallyAirGappedVaultTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
