// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ExternalKey.
class ExternalKeyArgs {
  /// Specifies whether to disable the policy lockout check performed when creating or updating the key's policy. Setting this value to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> increases the risk that the key becomes unmanageable. For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the AWS Key Management Service Developer Guide. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? bypassPolicyLockoutSafetyCheck;

  /// Duration in days after which the key is deleted after destruction of the resource. Must be between <span pulumi-lang-nodejs="`7`" pulumi-lang-dotnet="`7`" pulumi-lang-go="`7`" pulumi-lang-python="`7`" pulumi-lang-yaml="`7`" pulumi-lang-java="`7`">`7`</span> and <span pulumi-lang-nodejs="`30`" pulumi-lang-dotnet="`30`" pulumi-lang-go="`30`" pulumi-lang-python="`30`" pulumi-lang-yaml="`30`" pulumi-lang-java="`30`">`30`</span> days. Defaults to <span pulumi-lang-nodejs="`30`" pulumi-lang-dotnet="`30`" pulumi-lang-go="`30`" pulumi-lang-python="`30`" pulumi-lang-yaml="`30`" pulumi-lang-java="`30`">`30`</span>.
  final Input<int>? deletionWindowInDays;

  /// Description of the key.
  final Input<String>? description;

  /// Specifies whether the key is enabled. Keys pending import can only be <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Imported keys default to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> unless expired.
  final Input<bool>? enabled;

  /// Base64 encoded 256-bit symmetric encryption key material to import. The CMK is permanently associated with this key material. The same key material can be reimported, but you cannot import different key material.
  final Input<String>? keyMaterialBase64;

  /// Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: `SYMMETRIC_DEFAULT`, `RSA_2048`, `RSA_3072`, `RSA_4096`, `HMAC_224`, `HMAC_256`, `HMAC_384`, `HMAC_512`, `ECC_NIST_P256`, `ECC_NIST_P384`, `ECC_NIST_P521`, `ECC_SECG_P256K1`, `ML_DSA_44`, `ML_DSA_65`, `ML_DSA_87`, or `SM2` (China Regions only). Defaults to `SYMMETRIC_DEFAULT`. For help with choosing a key spec, see the [AWS KMS Developer Guide](https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html).
  final Input<String>? keySpec;

  /// Specifies the intended use of the key. Valid values: `ENCRYPT_DECRYPT`, `SIGN_VERIFY`, or `GENERATE_VERIFY_MAC`. Defaults to `ENCRYPT_DECRYPT`.
  final Input<String>? keyUsage;

  /// Indicates whether the KMS key is a multi-Region (<span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>) or regional (<span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>) key. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? multiRegion;

  /// A key policy JSON document. If you do not provide a key policy, AWS KMS attaches a default key policy to the CMK.
  final Input<String>? policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A key-value map of tags to assign to the key. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. If not specified, key material does not expire. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final Input<String>? validTo;

  ExternalKeyArgs({
    this.bypassPolicyLockoutSafetyCheck,
    this.deletionWindowInDays,
    this.description,
    this.enabled,
    this.keyMaterialBase64,
    this.keySpec,
    this.keyUsage,
    this.multiRegion,
    this.policy,
    this.region,
    this.tags,
    this.validTo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bypassPolicyLockoutSafetyCheckValue = bypassPolicyLockoutSafetyCheck;
    if (bypassPolicyLockoutSafetyCheckValue != null) {
      map['bypassPolicyLockoutSafetyCheck'] =
          bypassPolicyLockoutSafetyCheckValue;
    }
    final deletionWindowInDaysValue = deletionWindowInDays;
    if (deletionWindowInDaysValue != null) {
      map['deletionWindowInDays'] = deletionWindowInDaysValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final keyMaterialBase64Value = keyMaterialBase64;
    if (keyMaterialBase64Value != null) {
      map['keyMaterialBase64'] = keyMaterialBase64Value;
    }
    final keySpecValue = keySpec;
    if (keySpecValue != null) {
      map['keySpec'] = keySpecValue;
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
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final validToValue = validTo;
    if (validToValue != null) {
      map['validTo'] = validToValue;
    }
    return map;
  }

  factory ExternalKeyArgs.fromMap(Map<String, dynamic> map) {
    return ExternalKeyArgs(
      bypassPolicyLockoutSafetyCheck:
          Input.asOptionalInput<bool>(map['bypassPolicyLockoutSafetyCheck']),
      deletionWindowInDays:
          Input.asOptionalInput<int>(map['deletionWindowInDays']),
      description: Input.asOptionalInput<String>(map['description']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      keyMaterialBase64:
          Input.asOptionalInput<String>(map['keyMaterialBase64']),
      keySpec: Input.asOptionalInput<String>(map['keySpec']),
      keyUsage: Input.asOptionalInput<String>(map['keyUsage']),
      multiRegion: Input.asOptionalInput<bool>(map['multiRegion']),
      policy: Input.asOptionalInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      validTo: Input.asOptionalInput<String>(map['validTo']),
    );
  }
}
