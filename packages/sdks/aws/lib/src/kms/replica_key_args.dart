// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_replica_key_replica_key_args_doc}
/// The set of arguments for ReplicaKey.
/// {@endtemplate}
/// {@macro pulumi_kms_replica_key_replica_key_args_doc}
class ReplicaKeyArgs {
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
  /// The key policy to attach to the KMS key. If you do not specify a key policy, AWS KMS attaches the [default key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) to the KMS key.
  final pulumi.Input<String>? policy;
  /// The ARN of the multi-Region primary key to replicate. The primary key must be in a different AWS Region of the same AWS Partition. You can create only one replica of a given primary key in each AWS Region.
  final pulumi.Input<String> primaryKeyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the replica key. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ReplicaKeyArgs].
  /// [bypassPolicyLockoutSafetyCheck] A flag to indicate whether to bypass the key policy lockout safety check.
  /// [deletionWindowInDays] The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the KMS key.
  /// [description] A description of the KMS key.
  /// [enabled] Specifies whether the replica key is enabled. Disabled KMS keys cannot be used in cryptographic operations. The default value is `true`.
  /// [policy] The key policy to attach to the KMS key. If you do not specify a key policy, AWS KMS attaches the [default key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) to the KMS key.
  /// [primaryKeyArn] The ARN of the multi-Region primary key to replicate. The primary key must be in a different AWS Region of the same AWS Partition. You can create only one replica of a given primary key in each AWS Region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the replica key. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ReplicaKeyArgs({
    pulumi.Output<bool>? bypassPolicyLockoutSafetyCheck,
    pulumi.Output<int>? deletionWindowInDays,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? policy,
    required pulumi.Output<String> primaryKeyArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      bypassPolicyLockoutSafetyCheck = pulumi.Input.asOptionalInput<bool>(bypassPolicyLockoutSafetyCheck),
      deletionWindowInDays = pulumi.Input.asOptionalInput<int>(deletionWindowInDays),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      primaryKeyArn = pulumi.Input.asInput<String>(primaryKeyArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassPolicyLockoutSafetyCheck': ?bypassPolicyLockoutSafetyCheck,
      'deletionWindowInDays': ?deletionWindowInDays,
      'description': ?description,
      'enabled': ?enabled,
      'policy': ?policy,
      'primaryKeyArn': primaryKeyArn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ReplicaKeyArgs.fromMap(Map<String, dynamic> map) {
    return ReplicaKeyArgs(
      bypassPolicyLockoutSafetyCheck: map['bypassPolicyLockoutSafetyCheck'] == null ? null : pulumi.Output.create<bool>(map['bypassPolicyLockoutSafetyCheck'] as bool),
      deletionWindowInDays: map['deletionWindowInDays'] == null ? null : pulumi.Output.create<int>(map['deletionWindowInDays'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      primaryKeyArn: pulumi.Output.create<String>(map['primaryKeyArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

