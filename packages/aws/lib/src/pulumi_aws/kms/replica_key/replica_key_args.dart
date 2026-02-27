// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ReplicaKey.
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

  ReplicaKeyArgs({
    this.bypassPolicyLockoutSafetyCheck,
    this.deletionWindowInDays,
    this.description,
    this.enabled,
    this.policy,
    required this.primaryKeyArn,
    this.region,
    this.tags,
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
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    map['primaryKeyArn'] = primaryKeyArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ReplicaKeyArgs.fromMap(Map<String, dynamic> map) {
    return ReplicaKeyArgs(
      bypassPolicyLockoutSafetyCheck: pulumi.Input.asOptionalInput<bool>(
          map['bypassPolicyLockoutSafetyCheck']),
      deletionWindowInDays:
          pulumi.Input.asOptionalInput<int>(map['deletionWindowInDays']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      policy: pulumi.Input.asOptionalInput<String>(map['policy']),
      primaryKeyArn: pulumi.Input.asInput<String>(map['primaryKeyArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
