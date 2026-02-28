// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backup_vault_policy_vault_policy_args_doc}
/// The set of arguments for VaultPolicy.
/// {@endtemplate}
/// {@macro pulumi_backup_vault_policy_vault_policy_args_doc}
class VaultPolicyArgs {
  /// Name of the backup vault to add policy for.
  final pulumi.Input<String> backupVaultName;

  /// The backup vault access policy document in JSON format.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [VaultPolicyArgs].
  /// [backupVaultName] Name of the backup vault to add policy for.
  /// [policy] The backup vault access policy document in JSON format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  VaultPolicyArgs({
    required String backupVaultName,
    required String policy,
    String? region,
  })  : backupVaultName = pulumi.Input.asInput<String>(backupVaultName),
        policy = pulumi.Input.asInput<String>(policy),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupVaultName'] = backupVaultName;
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory VaultPolicyArgs.fromMap(Map<String, dynamic> map) {
    return VaultPolicyArgs(
      backupVaultName: map['backupVaultName'] as String,
      policy: map['policy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
