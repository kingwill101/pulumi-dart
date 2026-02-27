import 'package:pulumi/pulumi.dart';
import 'key_args.dart';

/// Manages a single-Region or multi-Region primary KMS key.
///
/// > **NOTE on KMS Key Policy:** KMS Key Policy can be configured in either the standalone resource `aws.kms.KeyPolicy`
/// or with the parameter `policy` in this resource.
/// Configuring with both will cause inconsistencies and may overwrite configuration.
///
/// ## Example Usage
///
/// ### Symmetric Encryption KMS Key
///
///
///
/// ### Symmetric Encryption KMS Key With Standalone Policy Resource
///
///
///
/// ### Asymmetric KMS Key
///
///
///
/// ### HMAC KMS key
///
///
///
/// ### Multi-Region Primary Key
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the KMS key.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import KMS Keys using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:kms/key:Key a 1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
class Key extends CustomResource {
  /// The Amazon Resource Name (ARN) of the key.
  late final Output<String> arn;

  /// A flag to indicate whether to bypass the key policy lockout safety check.
  /// Setting this value to true increases the risk that the KMS key becomes unmanageable. Do not set this value to true indiscriminately.
  /// For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the _AWS Key Management Service Developer Guide_.
  /// The default value is `false`.
  late final Output<bool?> bypassPolicyLockoutSafetyCheck;

  /// ID of the KMS [Custom Key Store](https://docs.aws.amazon.com/kms/latest/developerguide/create-cmk-keystore.html) where the key will be stored instead of KMS (eg CloudHSM).
  late final Output<String?> customKeyStoreId;

  /// Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports.
  /// Valid values: `SYMMETRIC_DEFAULT`, `RSA_2048`, `RSA_3072`, `RSA_4096`, `HMAC_224`, `HMAC_256`, `HMAC_384`, `HMAC_512`, `ECC_NIST_P256`, `ECC_NIST_P384`, `ECC_NIST_P521`, `ECC_SECG_P256K1`, `ML_DSA_44`, `ML_DSA_65`, `ML_DSA_87`, `SM2` (China Regions only), or `ECC_NIST_EDWARDS25519`. Defaults to `SYMMETRIC_DEFAULT`. For help with choosing a key spec, see the [AWS KMS Developer Guide](https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html).
  late final Output<String?> customerMasterKeySpec;

  /// The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the KMS key.
  /// If you specify a value, it must be between `7` and `30`, inclusive. If you do not specify a value, it defaults to `30`.
  /// If the KMS key is a multi-Region primary key with replicas, the waiting period begins when the last of its replica keys is deleted. Otherwise, the waiting period begins immediately.
  late final Output<int?> deletionWindowInDays;

  /// The description of the key as viewed in AWS console.
  late final Output<String> description;

  /// Specifies whether [key rotation](http://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html) is enabled. Defaults to `false`.
  late final Output<bool?> enableKeyRotation;

  /// Specifies whether the key is enabled. Defaults to `true`.
  late final Output<bool?> isEnabled;

  /// The globally unique identifier for the key.
  late final Output<String> keyId;

  /// Specifies the intended use of the key. Valid values: `ENCRYPT_DECRYPT`, `SIGN_VERIFY`, or `GENERATE_VERIFY_MAC`.
  /// Defaults to `ENCRYPT_DECRYPT`.
  late final Output<String?> keyUsage;

  /// Indicates whether the KMS key is a multi-Region (`true`) or regional (`false`) key. Defaults to `false`.
  late final Output<bool> multiRegion;

  /// A valid policy JSON document. Although this is a key policy, not an IAM policy, an `aws.iam.getPolicyDocument`, in the form that designates a principal, can be used.
  ///
  /// > **NOTE:** Note: All KMS keys must have a key policy. If a key policy is not specified, AWS gives the KMS key a [default key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) that gives all principals in the owning account unlimited access to all KMS operations for the key. This default key policy effectively delegates all access control to IAM policies and KMS grants.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Custom period of time between each rotation date. Must be a number between 90 and 2560 (inclusive).
  late final Output<int> rotationPeriodInDays;

  /// A map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Identifies the external key that serves as key material for the KMS key in an external key store.
  late final Output<String?> xksKeyId;

  Key(
    String name, {
    KeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kms/key:Key',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bypassPolicyLockoutSafetyCheck =
        registerOutput<bool?>('bypassPolicyLockoutSafetyCheck');
    this.customKeyStoreId = registerOutput<String?>('customKeyStoreId');
    this.customerMasterKeySpec =
        registerOutput<String?>('customerMasterKeySpec');
    this.deletionWindowInDays = registerOutput<int?>('deletionWindowInDays');
    this.description = registerOutput<String>('description');
    this.enableKeyRotation = registerOutput<bool?>('enableKeyRotation');
    this.isEnabled = registerOutput<bool?>('isEnabled');
    this.keyId = registerOutput<String>('keyId');
    this.keyUsage = registerOutput<String?>('keyUsage');
    this.multiRegion = registerOutput<bool>('multiRegion');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.rotationPeriodInDays = registerOutput<int>('rotationPeriodInDays');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.xksKeyId = registerOutput<String?>('xksKeyId');
  }
}
