// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ExternalKey resources.
class ExternalKeyState {
  /// The Amazon Resource Name (ARN) of the key.
  final pulumi.Input<String>? arn;
  /// Specifies whether to disable the policy lockout check performed when creating or updating the key's policy. Setting this value to `true` increases the risk that the key becomes unmanageable. For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the AWS Key Management Service Developer Guide. Defaults to `false`.
  final pulumi.Input<bool>? bypassPolicyLockoutSafetyCheck;
  /// Duration in days after which the key is deleted after destruction of the resource. Must be between `7` and `30` days. Defaults to `30`.
  final pulumi.Input<int>? deletionWindowInDays;
  /// Description of the key.
  final pulumi.Input<String>? description;
  /// Specifies whether the key is enabled. Keys pending import can only be `false`. Imported keys default to `true` unless expired.
  final pulumi.Input<bool>? enabled;
  /// Whether the key material expires. Empty when pending key material import, otherwise `KEY_MATERIAL_EXPIRES` or `KEY_MATERIAL_DOES_NOT_EXPIRE`.
  final pulumi.Input<String>? expirationModel;
  /// Base64 encoded 256-bit symmetric encryption key material to import. The CMK is permanently associated with this key material. The same key material can be reimported, but you cannot import different key material.
  final pulumi.Input<String>? keyMaterialBase64;
  /// Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: `SYMMETRIC_DEFAULT`, `RSA_2048`, `RSA_3072`, `RSA_4096`, `HMAC_224`, `HMAC_256`, `HMAC_384`, `HMAC_512`, `ECC_NIST_P256`, `ECC_NIST_P384`, `ECC_NIST_P521`, `ECC_SECG_P256K1`, `ML_DSA_44`, `ML_DSA_65`, `ML_DSA_87`, or `SM2` (China Regions only). Defaults to `SYMMETRIC_DEFAULT`. For help with choosing a key spec, see the [AWS KMS Developer Guide](https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html).
  final pulumi.Input<String>? keySpec;
  /// The state of the CMK.
  final pulumi.Input<String>? keyState;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. If not specified, key material does not expire. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final pulumi.Input<String>? validTo;

  /// Creates a new [ExternalKeyState].
  /// [arn] The Amazon Resource Name (ARN) of the key.
  /// [bypassPolicyLockoutSafetyCheck] Specifies whether to disable the policy lockout check performed when creating or updating the key's policy. Setting this value to `true` increases the risk that the key becomes unmanageable. For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the AWS Key Management Service Developer Guide. Defaults to `false`.
  /// [deletionWindowInDays] Duration in days after which the key is deleted after destruction of the resource. Must be between `7` and `30` days. Defaults to `30`.
  /// [description] Description of the key.
  /// [enabled] Specifies whether the key is enabled. Keys pending import can only be `false`. Imported keys default to `true` unless expired.
  /// [expirationModel] Whether the key material expires. Empty when pending key material import, otherwise `KEY_MATERIAL_EXPIRES` or `KEY_MATERIAL_DOES_NOT_EXPIRE`.
  /// [keyMaterialBase64] Base64 encoded 256-bit symmetric encryption key material to import. The CMK is permanently associated with this key material. The same key material can be reimported, but you cannot import different key material.
  /// [keySpec] Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: `SYMMETRIC_DEFAULT`, `RSA_2048`, `RSA_3072`, `RSA_4096`, `HMAC_224`, `HMAC_256`, `HMAC_384`, `HMAC_512`, `ECC_NIST_P256`, `ECC_NIST_P384`, `ECC_NIST_P521`, `ECC_SECG_P256K1`, `ML_DSA_44`, `ML_DSA_65`, `ML_DSA_87`, or `SM2` (China Regions only). Defaults to `SYMMETRIC_DEFAULT`. For help with choosing a key spec, see the [AWS KMS Developer Guide](https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html).
  /// [keyState] The state of the CMK.
  /// [keyUsage] Specifies the intended use of the key. Valid values: `ENCRYPT_DECRYPT`, `SIGN_VERIFY`, or `GENERATE_VERIFY_MAC`. Defaults to `ENCRYPT_DECRYPT`.
  /// [multiRegion] Indicates whether the KMS key is a multi-Region (`true`) or regional (`false`) key. Defaults to `false`.
  /// [policy] A key policy JSON document. If you do not provide a key policy, AWS KMS attaches a default key policy to the CMK.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A key-value map of tags to assign to the key. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [validTo] Time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. If not specified, key material does not expire. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  ExternalKeyState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? bypassPolicyLockoutSafetyCheck,
    pulumi.Output<int>? deletionWindowInDays,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? expirationModel,
    pulumi.Output<String>? keyMaterialBase64,
    pulumi.Output<String>? keySpec,
    pulumi.Output<String>? keyState,
    pulumi.Output<String>? keyUsage,
    pulumi.Output<bool>? multiRegion,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? validTo,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      bypassPolicyLockoutSafetyCheck = pulumi.Input.asOptionalInput<bool>(bypassPolicyLockoutSafetyCheck),
      deletionWindowInDays = pulumi.Input.asOptionalInput<int>(deletionWindowInDays),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      expirationModel = pulumi.Input.asOptionalInput<String>(expirationModel),
      keyMaterialBase64 = pulumi.Input.asOptionalInput<String>(keyMaterialBase64),
      keySpec = pulumi.Input.asOptionalInput<String>(keySpec),
      keyState = pulumi.Input.asOptionalInput<String>(keyState),
      keyUsage = pulumi.Input.asOptionalInput<String>(keyUsage),
      multiRegion = pulumi.Input.asOptionalInput<bool>(multiRegion),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      validTo = pulumi.Input.asOptionalInput<String>(validTo);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'bypassPolicyLockoutSafetyCheck': ?bypassPolicyLockoutSafetyCheck,
      'deletionWindowInDays': ?deletionWindowInDays,
      'description': ?description,
      'enabled': ?enabled,
      'expirationModel': ?expirationModel,
      'keyMaterialBase64': ?keyMaterialBase64,
      'keySpec': ?keySpec,
      'keyState': ?keyState,
      'keyUsage': ?keyUsage,
      'multiRegion': ?multiRegion,
      'policy': ?policy,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'validTo': ?validTo,
    };
  }

  factory ExternalKeyState.fromMap(Map<String, dynamic> map) {
    return ExternalKeyState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      bypassPolicyLockoutSafetyCheck: map['bypassPolicyLockoutSafetyCheck'] == null ? null : pulumi.Output.create<bool>(map['bypassPolicyLockoutSafetyCheck'] as bool),
      deletionWindowInDays: map['deletionWindowInDays'] == null ? null : pulumi.Output.create<int>(map['deletionWindowInDays'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      expirationModel: map['expirationModel'] == null ? null : pulumi.Output.create<String>(map['expirationModel'] as String),
      keyMaterialBase64: map['keyMaterialBase64'] == null ? null : pulumi.Output.create<String>(map['keyMaterialBase64'] as String),
      keySpec: map['keySpec'] == null ? null : pulumi.Output.create<String>(map['keySpec'] as String),
      keyState: map['keyState'] == null ? null : pulumi.Output.create<String>(map['keyState'] as String),
      keyUsage: map['keyUsage'] == null ? null : pulumi.Output.create<String>(map['keyUsage'] as String),
      multiRegion: map['multiRegion'] == null ? null : pulumi.Output.create<bool>(map['multiRegion'] as bool),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      validTo: map['validTo'] == null ? null : pulumi.Output.create<String>(map['validTo'] as String),
    );
  }
}

