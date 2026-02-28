// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_external_key_external_key_args_doc}
/// The set of arguments for ExternalKey.
/// {@endtemplate}
/// {@macro pulumi_kms_external_key_external_key_args_doc}
class ExternalKeyArgs {
  /// Specifies whether to disable the policy lockout check performed when creating or updating the key's policy. Setting this value to `true` increases the risk that the key becomes unmanageable. For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the AWS Key Management Service Developer Guide. Defaults to `false`.
  final pulumi.Input<bool>? bypassPolicyLockoutSafetyCheck;
  /// Duration in days after which the key is deleted after destruction of the resource. Must be between `7` and `30` days. Defaults to `30`.
  final pulumi.Input<int>? deletionWindowInDays;
  /// Description of the key.
  final pulumi.Input<String>? description;
  /// Specifies whether the key is enabled. Keys pending import can only be `false`. Imported keys default to `true` unless expired.
  final pulumi.Input<bool>? enabled;
  /// Base64 encoded 256-bit symmetric encryption key material to import. The CMK is permanently associated with this key material. The same key material can be reimported, but you cannot import different key material.
  final pulumi.Input<String>? keyMaterialBase64;
  /// Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: `SYMMETRIC_DEFAULT`, `RSA_2048`, `RSA_3072`, `RSA_4096`, `HMAC_224`, `HMAC_256`, `HMAC_384`, `HMAC_512`, `ECC_NIST_P256`, `ECC_NIST_P384`, `ECC_NIST_P521`, `ECC_SECG_P256K1`, `ML_DSA_44`, `ML_DSA_65`, `ML_DSA_87`, or `SM2` (China Regions only). Defaults to `SYMMETRIC_DEFAULT`. For help with choosing a key spec, see the [AWS KMS Developer Guide](https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html).
  final pulumi.Input<String>? keySpec;
  /// Specifies the intended use of the key. Valid values: `ENCRYPT_DECRYPT`, `SIGN_VERIFY`, or `GENERATE_VERIFY_MAC`. Defaults to `ENCRYPT_DECRYPT`.
  final pulumi.Input<String>? keyUsage;
  /// Indicates whether the KMS key is a multi-Region (`true`) or regional (`false`) key. Defaults to `false`.
  final pulumi.Input<bool>? multiRegion;
  /// A key policy JSON document. If you do not provide a key policy, AWS KMS attaches a default key policy to the CMK.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A key-value map of tags to assign to the key. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. If not specified, key material does not expire. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final pulumi.Input<String>? validTo;

  /// Creates a new [ExternalKeyArgs].
  /// [bypassPolicyLockoutSafetyCheck] Specifies whether to disable the policy lockout check performed when creating or updating the key's policy. Setting this value to `true` increases the risk that the key becomes unmanageable. For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the AWS Key Management Service Developer Guide. Defaults to `false`.
  /// [deletionWindowInDays] Duration in days after which the key is deleted after destruction of the resource. Must be between `7` and `30` days. Defaults to `30`.
  /// [description] Description of the key.
  /// [enabled] Specifies whether the key is enabled. Keys pending import can only be `false`. Imported keys default to `true` unless expired.
  /// [keyMaterialBase64] Base64 encoded 256-bit symmetric encryption key material to import. The CMK is permanently associated with this key material. The same key material can be reimported, but you cannot import different key material.
  /// [keySpec] Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: `SYMMETRIC_DEFAULT`, `RSA_2048`, `RSA_3072`, `RSA_4096`, `HMAC_224`, `HMAC_256`, `HMAC_384`, `HMAC_512`, `ECC_NIST_P256`, `ECC_NIST_P384`, `ECC_NIST_P521`, `ECC_SECG_P256K1`, `ML_DSA_44`, `ML_DSA_65`, `ML_DSA_87`, or `SM2` (China Regions only). Defaults to `SYMMETRIC_DEFAULT`. For help with choosing a key spec, see the [AWS KMS Developer Guide](https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html).
  /// [keyUsage] Specifies the intended use of the key. Valid values: `ENCRYPT_DECRYPT`, `SIGN_VERIFY`, or `GENERATE_VERIFY_MAC`. Defaults to `ENCRYPT_DECRYPT`.
  /// [multiRegion] Indicates whether the KMS key is a multi-Region (`true`) or regional (`false`) key. Defaults to `false`.
  /// [policy] A key policy JSON document. If you do not provide a key policy, AWS KMS attaches a default key policy to the CMK.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A key-value map of tags to assign to the key. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [validTo] Time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. If not specified, key material does not expire. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  ExternalKeyArgs({
    bool? bypassPolicyLockoutSafetyCheck,
    int? deletionWindowInDays,
    String? description,
    bool? enabled,
    String? keyMaterialBase64,
    String? keySpec,
    String? keyUsage,
    bool? multiRegion,
    String? policy,
    String? region,
    Map<String, String>? tags,
    String? validTo,
  }) :
      bypassPolicyLockoutSafetyCheck = pulumi.Input.asOptionalInput<bool>(bypassPolicyLockoutSafetyCheck),
      deletionWindowInDays = pulumi.Input.asOptionalInput<int>(deletionWindowInDays),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      keyMaterialBase64 = pulumi.Input.asOptionalInput<String>(keyMaterialBase64),
      keySpec = pulumi.Input.asOptionalInput<String>(keySpec),
      keyUsage = pulumi.Input.asOptionalInput<String>(keyUsage),
      multiRegion = pulumi.Input.asOptionalInput<bool>(multiRegion),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      validTo = pulumi.Input.asOptionalInput<String>(validTo);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassPolicyLockoutSafetyCheck': ?bypassPolicyLockoutSafetyCheck,
      'deletionWindowInDays': ?deletionWindowInDays,
      'description': ?description,
      'enabled': ?enabled,
      'keyMaterialBase64': ?keyMaterialBase64,
      'keySpec': ?keySpec,
      'keyUsage': ?keyUsage,
      'multiRegion': ?multiRegion,
      'policy': ?policy,
      'region': ?region,
      'tags': ?tags,
      'validTo': ?validTo,
    };
  }

  factory ExternalKeyArgs.fromMap(Map<String, dynamic> map) {
    return ExternalKeyArgs(
      bypassPolicyLockoutSafetyCheck: map['bypassPolicyLockoutSafetyCheck'] == null ? null : map['bypassPolicyLockoutSafetyCheck'] as bool,
      deletionWindowInDays: map['deletionWindowInDays'] == null ? null : map['deletionWindowInDays'] as int,
      description: map['description'] == null ? null : map['description'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      keyMaterialBase64: map['keyMaterialBase64'] == null ? null : map['keyMaterialBase64'] as String,
      keySpec: map['keySpec'] == null ? null : map['keySpec'] as String,
      keyUsage: map['keyUsage'] == null ? null : map['keyUsage'] as String,
      multiRegion: map['multiRegion'] == null ? null : map['multiRegion'] as bool,
      policy: map['policy'] == null ? null : map['policy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      validTo: map['validTo'] == null ? null : map['validTo'] as String,
    );
  }
}

