// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VaultLock resources.
class VaultLockState {
  /// Boolean whether to permanently apply this Glacier Lock Policy. Once completed, this cannot be undone. If set to `false`, the Glacier Lock Policy remains in a testing mode for 24 hours. After that time, the Glacier Lock Policy is automatically removed by Glacier and the this provider resource will show as needing recreation. Changing this from `false` to `true` will show as resource recreation, which is expected. Changing this from `true` to `false` is not possible unless the Glacier Vault is recreated at the same time.
  final pulumi.Input<bool>? completeLock;
  /// Allow this provider to ignore the error returned when attempting to delete the Glacier Lock Policy. This can be used to delete or recreate the Glacier Vault via this provider, for example, if the Glacier Vault Lock policy permits that action. This should only be used in conjunction with `complete_lock` being set to `true`.
  final pulumi.Input<bool>? ignoreDeletionError;
  /// JSON string containing the IAM policy to apply as the Glacier Vault Lock policy.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the Glacier Vault.
  final pulumi.Input<String>? vaultName;

  /// Creates a new [VaultLockState].
  /// [completeLock] Boolean whether to permanently apply this Glacier Lock Policy. Once completed, this cannot be undone. If set to `false`, the Glacier Lock Policy remains in a testing mode for 24 hours. After that time, the Glacier Lock Policy is automatically removed by Glacier and the this provider resource will show as needing recreation. Changing this from `false` to `true` will show as resource recreation, which is expected. Changing this from `true` to `false` is not possible unless the Glacier Vault is recreated at the same time.
  /// [ignoreDeletionError] Allow this provider to ignore the error returned when attempting to delete the Glacier Lock Policy. This can be used to delete or recreate the Glacier Vault via this provider, for example, if the Glacier Vault Lock policy permits that action. This should only be used in conjunction with `complete_lock` being set to `true`.
  /// [policy] JSON string containing the IAM policy to apply as the Glacier Vault Lock policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vaultName] The name of the Glacier Vault.
  VaultLockState({
    pulumi.Output<bool>? completeLock,
    pulumi.Output<bool>? ignoreDeletionError,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
    pulumi.Output<String>? vaultName,
  }) :
      completeLock = pulumi.Input.asOptionalInput<bool>(completeLock),
      ignoreDeletionError = pulumi.Input.asOptionalInput<bool>(ignoreDeletionError),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region),
      vaultName = pulumi.Input.asOptionalInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completeLock': ?completeLock,
      'ignoreDeletionError': ?ignoreDeletionError,
      'policy': ?policy,
      'region': ?region,
      'vaultName': ?vaultName,
    };
  }

  factory VaultLockState.fromMap(Map<String, dynamic> map) {
    return VaultLockState(
      completeLock: map['completeLock'] == null ? null : pulumi.Output.create<bool>(map['completeLock'] as bool),
      ignoreDeletionError: map['ignoreDeletionError'] == null ? null : pulumi.Output.create<bool>(map['ignoreDeletionError'] as bool),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      vaultName: map['vaultName'] == null ? null : pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

