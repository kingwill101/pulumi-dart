// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReplicaExternalKey resources.
class ReplicaExternalKeyState {
  /// The Amazon Resource Name (ARN) of the replica key. The key ARNs of related multi-Region keys differ only in the Region value.
  final pulumi.Input<String>? arn;
  /// A flag to indicate whether to bypass the key policy lockout safety check.
  /// Setting this value to true increases the risk that the KMS key becomes unmanageable. Do not set this value to true indiscriminately.
  /// For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the _AWS Key Management Service Developer Guide_.
  /// The default value is `false`.
  final pulumi.Input<bool>? bypassPolicyLockoutSafetyCheck;
  /// The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the KMS key.
  /// If you specify a value, it must be between `7` and `30`, inclusive. If you do not specify a value, it defaults to `30`.
  final pulumi.Input<int>? deletionWindowInDays;
  /// A description of the KMS key.
  final pulumi.Input<String>? description;
  /// Specifies whether the replica key is enabled. Disabled KMS keys cannot be used in cryptographic operations. Keys pending import can only be `false`. Imported keys default to `true` unless expired.
  final pulumi.Input<bool>? enabled;
  /// Whether the key material expires. Empty when pending key material import, otherwise `KEY_MATERIAL_EXPIRES` or `KEY_MATERIAL_DOES_NOT_EXPIRE`.
  final pulumi.Input<String>? expirationModel;
  /// The key ID of the replica key. Related multi-Region keys have the same key ID.
  final pulumi.Input<String>? keyId;
  /// Base64 encoded 256-bit symmetric encryption key material to import. The KMS key is permanently associated with this key material. The same key material can be [reimported](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material), but you cannot import different key material.
  final pulumi.Input<String>? keyMaterialBase64;
  /// The state of the replica key.
  final pulumi.Input<String>? keyState;
  /// The [cryptographic operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations) for which you can use the KMS key. This is a shared property of multi-Region keys.
  final pulumi.Input<String>? keyUsage;
  /// The key policy to attach to the KMS key. If you do not specify a key policy, AWS KMS attaches the [default key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) to the KMS key.
  final pulumi.Input<String>? policy;
  /// The ARN of the multi-Region primary key to replicate. The primary key must be in a different AWS Region of the same AWS Partition. You can create only one replica of a given primary key in each AWS Region.
  final pulumi.Input<String>? primaryKeyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the replica key. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the key becomes unusable. If not specified, key material does not expire. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final pulumi.Input<String>? validTo;

  /// Creates a new [ReplicaExternalKeyState].
  /// [arn] The Amazon Resource Name (ARN) of the replica key. The key ARNs of related multi-Region keys differ only in the Region value.
  /// [bypassPolicyLockoutSafetyCheck] A flag to indicate whether to bypass the key policy lockout safety check.
  /// [deletionWindowInDays] The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the KMS key.
  /// [description] A description of the KMS key.
  /// [enabled] Specifies whether the replica key is enabled. Disabled KMS keys cannot be used in cryptographic operations. Keys pending import can only be `false`. Imported keys default to `true` unless expired.
  /// [expirationModel] Whether the key material expires. Empty when pending key material import, otherwise `KEY_MATERIAL_EXPIRES` or `KEY_MATERIAL_DOES_NOT_EXPIRE`.
  /// [keyId] The key ID of the replica key. Related multi-Region keys have the same key ID.
  /// [keyMaterialBase64] Base64 encoded 256-bit symmetric encryption key material to import. The KMS key is permanently associated with this key material. The same key material can be [reimported](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material), but you cannot import different key material.
  /// [keyState] The state of the replica key.
  /// [keyUsage] The [cryptographic operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations) for which you can use the KMS key. This is a shared property of multi-Region keys.
  /// [policy] The key policy to attach to the KMS key. If you do not specify a key policy, AWS KMS attaches the [default key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) to the KMS key.
  /// [primaryKeyArn] The ARN of the multi-Region primary key to replicate. The primary key must be in a different AWS Region of the same AWS Partition. You can create only one replica of a given primary key in each AWS Region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the replica key. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [validTo] Time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the key becomes unusable. If not specified, key material does not expire. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  ReplicaExternalKeyState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? bypassPolicyLockoutSafetyCheck,
    pulumi.Output<int>? deletionWindowInDays,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? expirationModel,
    pulumi.Output<String>? keyId,
    pulumi.Output<String>? keyMaterialBase64,
    pulumi.Output<String>? keyState,
    pulumi.Output<String>? keyUsage,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? primaryKeyArn,
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
      keyId = pulumi.Input.asOptionalInput<String>(keyId),
      keyMaterialBase64 = pulumi.Input.asOptionalInput<String>(keyMaterialBase64),
      keyState = pulumi.Input.asOptionalInput<String>(keyState),
      keyUsage = pulumi.Input.asOptionalInput<String>(keyUsage),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      primaryKeyArn = pulumi.Input.asOptionalInput<String>(primaryKeyArn),
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
      'keyId': ?keyId,
      'keyMaterialBase64': ?keyMaterialBase64,
      'keyState': ?keyState,
      'keyUsage': ?keyUsage,
      'policy': ?policy,
      'primaryKeyArn': ?primaryKeyArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'validTo': ?validTo,
    };
  }

  factory ReplicaExternalKeyState.fromMap(Map<String, dynamic> map) {
    return ReplicaExternalKeyState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      bypassPolicyLockoutSafetyCheck: map['bypassPolicyLockoutSafetyCheck'] == null ? null : pulumi.Output.create<bool>(map['bypassPolicyLockoutSafetyCheck'] as bool),
      deletionWindowInDays: map['deletionWindowInDays'] == null ? null : pulumi.Output.create<int>(map['deletionWindowInDays'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      expirationModel: map['expirationModel'] == null ? null : pulumi.Output.create<String>(map['expirationModel'] as String),
      keyId: map['keyId'] == null ? null : pulumi.Output.create<String>(map['keyId'] as String),
      keyMaterialBase64: map['keyMaterialBase64'] == null ? null : pulumi.Output.create<String>(map['keyMaterialBase64'] as String),
      keyState: map['keyState'] == null ? null : pulumi.Output.create<String>(map['keyState'] as String),
      keyUsage: map['keyUsage'] == null ? null : pulumi.Output.create<String>(map['keyUsage'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      primaryKeyArn: map['primaryKeyArn'] == null ? null : pulumi.Output.create<String>(map['primaryKeyArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      validTo: map['validTo'] == null ? null : pulumi.Output.create<String>(map['validTo'] as String),
    );
  }
}

