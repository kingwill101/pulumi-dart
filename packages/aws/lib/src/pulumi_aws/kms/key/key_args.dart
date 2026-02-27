// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Key.
class KeyArgs {
  /// A flag to indicate whether to bypass the key policy lockout safety check.
  /// Setting this value to true increases the risk that the KMS key becomes unmanageable. Do not set this value to true indiscriminately.
  /// For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the _AWS Key Management Service Developer Guide_.
  /// The default value is `false`.
  final pulumi.Input<bool>? bypassPolicyLockoutSafetyCheck;

  /// ID of the KMS [Custom Key Store](https://docs.aws.amazon.com/kms/latest/developerguide/create-cmk-keystore.html) where the key will be stored instead of KMS (eg CloudHSM).
  final pulumi.Input<String>? customKeyStoreId;

  /// Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports.
  /// Valid values: `SYMMETRIC_DEFAULT`, `RSA_2048`, `RSA_3072`, `RSA_4096`, `HMAC_224`, `HMAC_256`, `HMAC_384`, `HMAC_512`, `ECC_NIST_P256`, `ECC_NIST_P384`, `ECC_NIST_P521`, `ECC_SECG_P256K1`, `ML_DSA_44`, `ML_DSA_65`, `ML_DSA_87`, `SM2` (China Regions only), or `ECC_NIST_EDWARDS25519`. Defaults to `SYMMETRIC_DEFAULT`. For help with choosing a key spec, see the [AWS KMS Developer Guide](https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html).
  final pulumi.Input<String>? customerMasterKeySpec;

  /// The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the KMS key.
  /// If you specify a value, it must be between `7` and `30`, inclusive. If you do not specify a value, it defaults to `30`.
  /// If the KMS key is a multi-Region primary key with replicas, the waiting period begins when the last of its replica keys is deleted. Otherwise, the waiting period begins immediately.
  final pulumi.Input<int>? deletionWindowInDays;

  /// The description of the key as viewed in AWS console.
  final pulumi.Input<String>? description;

  /// Specifies whether [key rotation](http://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html) is enabled. Defaults to `false`.
  final pulumi.Input<bool>? enableKeyRotation;

  /// Specifies whether the key is enabled. Defaults to `true`.
  final pulumi.Input<bool>? isEnabled;

  /// Specifies the intended use of the key. Valid values: `ENCRYPT_DECRYPT`, `SIGN_VERIFY`, or `GENERATE_VERIFY_MAC`.
  /// Defaults to `ENCRYPT_DECRYPT`.
  final pulumi.Input<String>? keyUsage;

  /// Indicates whether the KMS key is a multi-Region (`true`) or regional (`false`) key. Defaults to `false`.
  final pulumi.Input<bool>? multiRegion;

  /// A valid policy JSON document. Although this is a key policy, not an IAM policy, an `aws.iam.getPolicyDocument`, in the form that designates a principal, can be used.
  ///
  /// > **NOTE:** Note: All KMS keys must have a key policy. If a key policy is not specified, AWS gives the KMS key a [default key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) that gives all principals in the owning account unlimited access to all KMS operations for the key. This default key policy effectively delegates all access control to IAM policies and KMS grants.
  final pulumi.Input<String>? policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Custom period of time between each rotation date. Must be a number between 90 and 2560 (inclusive).
  final pulumi.Input<int>? rotationPeriodInDays;

  /// A map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Identifies the external key that serves as key material for the KMS key in an external key store.
  final pulumi.Input<String>? xksKeyId;

  KeyArgs({
    this.bypassPolicyLockoutSafetyCheck,
    this.customKeyStoreId,
    this.customerMasterKeySpec,
    this.deletionWindowInDays,
    this.description,
    this.enableKeyRotation,
    this.isEnabled,
    this.keyUsage,
    this.multiRegion,
    this.policy,
    this.region,
    this.rotationPeriodInDays,
    this.tags,
    this.xksKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bypassPolicyLockoutSafetyCheckValue = bypassPolicyLockoutSafetyCheck;
    if (bypassPolicyLockoutSafetyCheckValue != null) {
      map['bypassPolicyLockoutSafetyCheck'] =
          bypassPolicyLockoutSafetyCheckValue;
    }
    final customKeyStoreIdValue = customKeyStoreId;
    if (customKeyStoreIdValue != null) {
      map['customKeyStoreId'] = customKeyStoreIdValue;
    }
    final customerMasterKeySpecValue = customerMasterKeySpec;
    if (customerMasterKeySpecValue != null) {
      map['customerMasterKeySpec'] = customerMasterKeySpecValue;
    }
    final deletionWindowInDaysValue = deletionWindowInDays;
    if (deletionWindowInDaysValue != null) {
      map['deletionWindowInDays'] = deletionWindowInDaysValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enableKeyRotationValue = enableKeyRotation;
    if (enableKeyRotationValue != null) {
      map['enableKeyRotation'] = enableKeyRotationValue;
    }
    final isEnabledValue = isEnabled;
    if (isEnabledValue != null) {
      map['isEnabled'] = isEnabledValue;
    }
    final keyUsageValue = keyUsage;
    if (keyUsageValue != null) {
      map['keyUsage'] = keyUsageValue;
    }
    final multiRegionValue = multiRegion;
    if (multiRegionValue != null) {
      map['multiRegion'] = multiRegionValue;
    }
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rotationPeriodInDaysValue = rotationPeriodInDays;
    if (rotationPeriodInDaysValue != null) {
      map['rotationPeriodInDays'] = rotationPeriodInDaysValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final xksKeyIdValue = xksKeyId;
    if (xksKeyIdValue != null) {
      map['xksKeyId'] = xksKeyIdValue;
    }
    return map;
  }

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      bypassPolicyLockoutSafetyCheck: pulumi.Input.asOptionalInput<bool>(
          map['bypassPolicyLockoutSafetyCheck']),
      customKeyStoreId:
          pulumi.Input.asOptionalInput<String>(map['customKeyStoreId']),
      customerMasterKeySpec:
          pulumi.Input.asOptionalInput<String>(map['customerMasterKeySpec']),
      deletionWindowInDays:
          pulumi.Input.asOptionalInput<int>(map['deletionWindowInDays']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      enableKeyRotation:
          pulumi.Input.asOptionalInput<bool>(map['enableKeyRotation']),
      isEnabled: pulumi.Input.asOptionalInput<bool>(map['isEnabled']),
      keyUsage: pulumi.Input.asOptionalInput<String>(map['keyUsage']),
      multiRegion: pulumi.Input.asOptionalInput<bool>(map['multiRegion']),
      policy: pulumi.Input.asOptionalInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      rotationPeriodInDays:
          pulumi.Input.asOptionalInput<int>(map['rotationPeriodInDays']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      xksKeyId: pulumi.Input.asOptionalInput<String>(map['xksKeyId']),
    );
  }
}
