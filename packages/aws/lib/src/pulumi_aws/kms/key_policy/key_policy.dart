import 'package:pulumi/pulumi.dart';
import 'key_policy_args.dart';

/// Attaches a policy to a KMS Key.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import KMS Key Policies using the `key_id`. For example:
///
/// ```sh
/// $ pulumi import aws:kms/keyPolicy:KeyPolicy a 1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
class KeyPolicy extends CustomResource {
  /// A flag to indicate whether to bypass the key policy lockout safety check.
  /// Setting this value to true increases the risk that the KMS key becomes unmanageable. Do not set this value to true indiscriminately. If this value is set, and the resource is destroyed, a warning will be shown, and the resource will be removed from state.
  /// For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the _AWS Key Management Service Developer Guide_.
  late final Output<bool?> bypassPolicyLockoutSafetyCheck;

  /// The ID of the KMS Key to attach the policy.
  late final Output<String> keyId;

  /// A valid policy JSON document. Although this is a key policy, not an IAM policy, an `aws.iam.getPolicyDocument`, in the form that designates a principal, can be used. For more information about building policy documents, see the AWS IAM Policy Document Guide.
  ///
  /// > **NOTE:** All KMS keys must have a key policy. If a key policy is not specified, or this resource is destroyed, AWS gives the KMS key a [default key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) that gives all principals in the owning account unlimited access to all KMS operations for the key. This default key policy effectively delegates all access control to IAM policies and KMS grants.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  KeyPolicy(
    String name, {
    KeyPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kms/keyPolicy:KeyPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bypassPolicyLockoutSafetyCheck =
        registerOutput<bool?>('bypassPolicyLockoutSafetyCheck');
    this.keyId = registerOutput<String>('keyId');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
