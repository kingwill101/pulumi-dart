// ignore_for_file: unused_element, unnecessary_cast

import 'long_term_retention_policy.dart';

/// Vault retention policy for AzureFileShare
class VaultRetentionPolicy {
  final int snapshotRetentionInDays;
  /// Base class for retention policy.
  final LongTermRetentionPolicy vaultRetention;

  /// Creates a new [VaultRetentionPolicy].
  /// [snapshotRetentionInDays] Required.
  /// [vaultRetention] Base class for retention policy.
  VaultRetentionPolicy({
    required this.snapshotRetentionInDays,
    required this.vaultRetention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotRetentionInDays': snapshotRetentionInDays,
      'vaultRetention': vaultRetention.toMap(),
    };
  }

  factory VaultRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return VaultRetentionPolicy(
      snapshotRetentionInDays: map['snapshotRetentionInDays'] as int,
      vaultRetention: LongTermRetentionPolicy.fromMap((map['vaultRetention'] as Map).cast<String, dynamic>()),
    );
  }
}

