import 'package:pulumi/pulumi.dart';
import 'vault_lock_args.dart';

/// Manages a Glacier Vault Lock. You can refer to the [Glacier Developer Guide](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html) for a full explanation of the Glacier Vault Lock functionality.
///
/// > **NOTE:** This resource allows you to test Glacier Vault Lock policies by setting the `complete_lock` argument to `false`. When testing policies in this manner, the Glacier Vault Lock automatically expires after 24 hours and this provider will show this resource as needing recreation after that time. To permanently apply the policy, set the `complete_lock` argument to `true`. When changing `complete_lock` to `true`, it is expected the resource will show as recreating.
///
/// > **NOTE:** We suggest using `jsonencode()` or `aws.iam.getPolicyDocument` when assigning a value to `policy`. They seamlessly translate Terraform language into JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// !> **WARNING:** Once a Glacier Vault Lock is completed, it is immutable. The deletion of the Glacier Vault Lock is not be possible and attempting to remove it from this provider will return an error. Set the `ignore_deletion_error` argument to `true` and apply this configuration before attempting to delete this resource via this provider or remove this resource from this provider's management.
///
/// ## Example Usage
///
/// ### Testing Glacier Vault Lock Policy
///
///
///
/// ### Permanently Applying Glacier Vault Lock Policy
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glacier Vault Locks using the Glacier Vault name. For example:
///
/// ```sh
/// $ pulumi import aws:glacier/vaultLock:VaultLock example example-vault
/// ```
class VaultLock extends CustomResource {
  /// Boolean whether to permanently apply this Glacier Lock Policy. Once completed, this cannot be undone. If set to `false`, the Glacier Lock Policy remains in a testing mode for 24 hours. After that time, the Glacier Lock Policy is automatically removed by Glacier and the this provider resource will show as needing recreation. Changing this from `false` to `true` will show as resource recreation, which is expected. Changing this from `true` to `false` is not possible unless the Glacier Vault is recreated at the same time.
  late final Output<bool> completeLock;

  /// Allow this provider to ignore the error returned when attempting to delete the Glacier Lock Policy. This can be used to delete or recreate the Glacier Vault via this provider, for example, if the Glacier Vault Lock policy permits that action. This should only be used in conjunction with `complete_lock` being set to `true`.
  late final Output<bool?> ignoreDeletionError;

  /// JSON string containing the IAM policy to apply as the Glacier Vault Lock policy.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the Glacier Vault.
  late final Output<String> vaultName;

  VaultLock(
    String name, {
    VaultLockArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glacier/vaultLock:VaultLock',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.completeLock = registerOutput<bool>('completeLock');
    this.ignoreDeletionError = registerOutput<bool?>('ignoreDeletionError');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.vaultName = registerOutput<String>('vaultName');
  }
}
