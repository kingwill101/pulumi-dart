// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReplicaKey resources.
class ReplicaKeyState {
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
  /// Specifies whether the replica key is enabled. Disabled KMS keys cannot be used in cryptographic operations. The default value is `true`.
  final pulumi.Input<bool>? enabled;
  /// The key ID of the replica key. Related multi-Region keys have the same key ID.
  final pulumi.Input<String>? keyId;
  /// A Boolean value that specifies whether key rotation is enabled. This is a shared property of multi-Region keys.
  final pulumi.Input<bool>? keyRotationEnabled;
  /// The type of key material in the KMS key. This is a shared property of multi-Region keys.
  final pulumi.Input<String>? keySpec;
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

  /// Creates a new [ReplicaKeyState].
  /// [arn] The Amazon Resource Name (ARN) of the replica key. The key ARNs of related multi-Region keys differ only in the Region value.
  /// [bypassPolicyLockoutSafetyCheck] A flag to indicate whether to bypass the key policy lockout safety check.
  /// [deletionWindowInDays] The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the KMS key.
  /// [description] A description of the KMS key.
  /// [enabled] Specifies whether the replica key is enabled. Disabled KMS keys cannot be used in cryptographic operations. The default value is `true`.
  /// [keyId] The key ID of the replica key. Related multi-Region keys have the same key ID.
  /// [keyRotationEnabled] A Boolean value that specifies whether key rotation is enabled. This is a shared property of multi-Region keys.
  /// [keySpec] The type of key material in the KMS key. This is a shared property of multi-Region keys.
  /// [keyUsage] The [cryptographic operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations) for which you can use the KMS key. This is a shared property of multi-Region keys.
  /// [policy] The key policy to attach to the KMS key. If you do not specify a key policy, AWS KMS attaches the [default key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) to the KMS key.
  /// [primaryKeyArn] The ARN of the multi-Region primary key to replicate. The primary key must be in a different AWS Region of the same AWS Partition. You can create only one replica of a given primary key in each AWS Region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the replica key. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ReplicaKeyState({
    this.arn,
    this.bypassPolicyLockoutSafetyCheck,
    this.deletionWindowInDays,
    this.description,
    this.enabled,
    this.keyId,
    this.keyRotationEnabled,
    this.keySpec,
    this.keyUsage,
    this.policy,
    this.primaryKeyArn,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'bypassPolicyLockoutSafetyCheck': ?bypassPolicyLockoutSafetyCheck,
      'deletionWindowInDays': ?deletionWindowInDays,
      'description': ?description,
      'enabled': ?enabled,
      'keyId': ?keyId,
      'keyRotationEnabled': ?keyRotationEnabled,
      'keySpec': ?keySpec,
      'keyUsage': ?keyUsage,
      'policy': ?policy,
      'primaryKeyArn': ?primaryKeyArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ReplicaKeyState.fromMap(Map<String, dynamic> map) {
    return ReplicaKeyState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      bypassPolicyLockoutSafetyCheck: map['bypassPolicyLockoutSafetyCheck'] == null ? null : ((map['bypassPolicyLockoutSafetyCheck'] as bool).input()).input(),
      deletionWindowInDays: map['deletionWindowInDays'] == null ? null : ((map['deletionWindowInDays'] as int).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      keyId: map['keyId'] == null ? null : ((map['keyId'] as String).input()).input(),
      keyRotationEnabled: map['keyRotationEnabled'] == null ? null : ((map['keyRotationEnabled'] as bool).input()).input(),
      keySpec: map['keySpec'] == null ? null : ((map['keySpec'] as String).input()).input(),
      keyUsage: map['keyUsage'] == null ? null : ((map['keyUsage'] as String).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      primaryKeyArn: map['primaryKeyArn'] == null ? null : ((map['primaryKeyArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

