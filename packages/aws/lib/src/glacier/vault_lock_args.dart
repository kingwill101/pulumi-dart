// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_glacier_vault_lock_vault_lock_args_doc}
/// The set of arguments for VaultLock.
/// {@endtemplate}
/// {@macro pulumi_glacier_vault_lock_vault_lock_args_doc}
class VaultLockArgs {
  /// Boolean whether to permanently apply this Glacier Lock Policy. Once completed, this cannot be undone. If set to `false`, the Glacier Lock Policy remains in a testing mode for 24 hours. After that time, the Glacier Lock Policy is automatically removed by Glacier and the this provider resource will show as needing recreation. Changing this from `false` to `true` will show as resource recreation, which is expected. Changing this from `true` to `false` is not possible unless the Glacier Vault is recreated at the same time.
  final pulumi.Input<bool> completeLock;

  /// Allow this provider to ignore the error returned when attempting to delete the Glacier Lock Policy. This can be used to delete or recreate the Glacier Vault via this provider, for example, if the Glacier Vault Lock policy permits that action. This should only be used in conjunction with `complete_lock` being set to `true`.
  final pulumi.Input<bool>? ignoreDeletionError;

  /// JSON string containing the IAM policy to apply as the Glacier Vault Lock policy.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the Glacier Vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [VaultLockArgs].
  /// [completeLock] Boolean whether to permanently apply this Glacier Lock Policy. Once completed, this cannot be undone. If set to `false`, the Glacier Lock Policy remains in a testing mode for 24 hours. After that time, the Glacier Lock Policy is automatically removed by Glacier and the this provider resource will show as needing recreation. Changing this from `false` to `true` will show as resource recreation, which is expected. Changing this from `true` to `false` is not possible unless the Glacier Vault is recreated at the same time.
  /// [ignoreDeletionError] Allow this provider to ignore the error returned when attempting to delete the Glacier Lock Policy. This can be used to delete or recreate the Glacier Vault via this provider, for example, if the Glacier Vault Lock policy permits that action. This should only be used in conjunction with `complete_lock` being set to `true`.
  /// [policy] JSON string containing the IAM policy to apply as the Glacier Vault Lock policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vaultName] The name of the Glacier Vault.
  VaultLockArgs({
    required bool completeLock,
    bool? ignoreDeletionError,
    required String policy,
    String? region,
    required String vaultName,
  })  : completeLock = pulumi.Input.asInput<bool>(completeLock),
        ignoreDeletionError =
            pulumi.Input.asOptionalInput<bool>(ignoreDeletionError),
        policy = pulumi.Input.asInput<String>(policy),
        region = pulumi.Input.asOptionalInput<String>(region),
        vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['completeLock'] = completeLock;
    final ignoreDeletionErrorValue = ignoreDeletionError;
    if (ignoreDeletionErrorValue != null) {
      map['ignoreDeletionError'] = ignoreDeletionErrorValue;
    }
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vaultName'] = vaultName;
    return map;
  }

  factory VaultLockArgs.fromMap(Map<String, dynamic> map) {
    return VaultLockArgs(
      completeLock: map['completeLock'] as bool,
      ignoreDeletionError: map['ignoreDeletionError'] == null
          ? null
          : map['ignoreDeletionError'] as bool,
      policy: map['policy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      vaultName: map['vaultName'] as String,
    );
  }
}
