// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VaultPolicy resources.
class VaultPolicyState {
  /// The ARN of the vault.
  final pulumi.Input<String>? backupVaultArn;
  /// Name of the backup vault to add policy for.
  final pulumi.Input<String>? backupVaultName;
  /// The backup vault access policy document in JSON format.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [VaultPolicyState].
  /// [backupVaultArn] The ARN of the vault.
  /// [backupVaultName] Name of the backup vault to add policy for.
  /// [policy] The backup vault access policy document in JSON format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  VaultPolicyState({
    pulumi.Output<String>? backupVaultArn,
    pulumi.Output<String>? backupVaultName,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
  }) :
      backupVaultArn = pulumi.Input.asOptionalInput<String>(backupVaultArn),
      backupVaultName = pulumi.Input.asOptionalInput<String>(backupVaultName),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVaultArn': ?backupVaultArn,
      'backupVaultName': ?backupVaultName,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory VaultPolicyState.fromMap(Map<String, dynamic> map) {
    return VaultPolicyState(
      backupVaultArn: map['backupVaultArn'] == null ? null : pulumi.Output.create<String>(map['backupVaultArn'] as String),
      backupVaultName: map['backupVaultName'] == null ? null : pulumi.Output.create<String>(map['backupVaultName'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

