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
  const VaultPolicyArgs({
    required this.backupVaultName,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVaultName': backupVaultName,
      'policy': policy,
      'region': ?region,
    };
  }

  factory VaultPolicyArgs.fromMap(Map<String, dynamic> map) {
    return VaultPolicyArgs(
      backupVaultName: pulumi.Input.fromValue(map['backupVaultName'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

