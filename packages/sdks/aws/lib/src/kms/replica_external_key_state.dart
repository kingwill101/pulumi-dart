// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReplicaExternalKey resources.
class ReplicaExternalKeyState {
  /// ARN of the replica key. The key ARNs of related multi-Region keys differ only in the Region value.
  final pulumi.Input<String?>? arn;
  /// Whether to bypass the key policy lockout safety check. Setting this value to true increases the risk that the KMS key becomes unmanageable. Do not set this value to true indiscriminately. For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the _AWS KMS Developer Guide_. The default value is `false`.
  final pulumi.Input<bool?>? bypassPolicyLockoutSafetyCheck;
  /// Waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the KMS key. If you specify a value, it must be between `7` and `30`, inclusive. If you do not specify a value, it defaults to `30`.
  final pulumi.Input<int?>? deletionWindowInDays;
  /// Description of the KMS key.
  final pulumi.Input<String?>? description;
  /// Whether the replica key is enabled. Disabled KMS keys cannot be used in cryptographic operations. Keys pending import can only be `false`. Imported keys default to `true` unless expired.
  final pulumi.Input<bool?>? enabled;
  /// Whether the key material expires. Empty when pending key material import, otherwise `KEY_MATERIAL_EXPIRES` or `KEY_MATERIAL_DOES_NOT_EXPIRE`.
  final pulumi.Input<String?>? expirationModel;
  /// Key ID of the replica key. Related multi-Region keys have the same key ID.
  final pulumi.Input<String?>? keyId;
  /// Base64 encoded 256-bit symmetric encryption key material to import. The KMS key is permanently associated with this key material. The same key material can be [reimported](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material), but you cannot import different key material.
  final pulumi.Input<String?>? keyMaterialBase64;
  /// State of the replica key.
  final pulumi.Input<String?>? keyState;
  /// [Cryptographic operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations) for which you can use the KMS key. This is a shared property of multi-Region keys.
  final pulumi.Input<String?>? keyUsage;
  /// Key policy to attach to the KMS key. If you do not specify a key policy, AWS KMS attaches the [default key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) to the KMS key.
  final pulumi.Input<String?>? policy;
  /// ARN of the multi-Region primary key to replicate. The primary key must be in a different AWS Region of the same AWS Partition. You can create only one replica of a given primary key in each AWS Region.
  final pulumi.Input<String?>? primaryKeyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the replica key. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the key becomes unusable. If not specified, key material does not expire. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final pulumi.Input<String?>? validTo;

  /// Creates a new [ReplicaExternalKeyState].
  /// [arn] ARN of the replica key. The key ARNs of related multi-Region keys differ only in the Region value.
  /// [bypassPolicyLockoutSafetyCheck] Whether to bypass the key policy lockout safety check. Setting this value to true increases the risk that the KMS key becomes unmanageable. Do not set this value to true indiscriminately. For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the _AWS KMS Developer Guide_. The default value is `false`.
  /// [deletionWindowInDays] Waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the KMS key. If you specify a value, it must be between `7` and `30`, inclusive. If you do not specify a value, it defaults to `30`.
  /// [description] Description of the KMS key.
  /// [enabled] Whether the replica key is enabled. Disabled KMS keys cannot be used in cryptographic operations. Keys pending import can only be `false`. Imported keys default to `true` unless expired.
  /// [expirationModel] Whether the key material expires. Empty when pending key material import, otherwise `KEY_MATERIAL_EXPIRES` or `KEY_MATERIAL_DOES_NOT_EXPIRE`.
  /// [keyId] Key ID of the replica key. Related multi-Region keys have the same key ID.
  /// [keyMaterialBase64] Base64 encoded 256-bit symmetric encryption key material to import. The KMS key is permanently associated with this key material. The same key material can be [reimported](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material), but you cannot import different key material.
  /// [keyState] State of the replica key.
  /// [keyUsage] [Cryptographic operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations) for which you can use the KMS key. This is a shared property of multi-Region keys.
  /// [policy] Key policy to attach to the KMS key. If you do not specify a key policy, AWS KMS attaches the [default key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) to the KMS key.
  /// [primaryKeyArn] ARN of the multi-Region primary key to replicate. The primary key must be in a different AWS Region of the same AWS Partition. You can create only one replica of a given primary key in each AWS Region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the replica key. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [validTo] Time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the key becomes unusable. If not specified, key material does not expire. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  const ReplicaExternalKeyState({
    this.arn,
    this.bypassPolicyLockoutSafetyCheck,
    this.deletionWindowInDays,
    this.description,
    this.enabled,
    this.expirationModel,
    this.keyId,
    this.keyMaterialBase64,
    this.keyState,
    this.keyUsage,
    this.policy,
    this.primaryKeyArn,
    this.region,
    this.tags,
    this.tagsAll,
    this.validTo,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bypassPolicyLockoutSafetyCheck: (() { final guardedValue = map['bypassPolicyLockoutSafetyCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionWindowInDays: (() { final guardedValue = map['deletionWindowInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expirationModel: (() { final guardedValue = map['expirationModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyMaterialBase64: (() { final guardedValue = map['keyMaterialBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyState: (() { final guardedValue = map['keyState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyUsage: (() { final guardedValue = map['keyUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryKeyArn: (() { final guardedValue = map['primaryKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      validTo: (() { final guardedValue = map['validTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
