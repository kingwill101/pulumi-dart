// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ReplicaExternalKey.
class ReplicaExternalKeyArgs {
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

  /// Base64 encoded 256-bit symmetric encryption key material to import. The KMS key is permanently associated with this key material. The same key material can be [reimported](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material), but you cannot import different key material.
  final pulumi.Input<String>? keyMaterialBase64;

  /// The key policy to attach to the KMS key. If you do not specify a key policy, AWS KMS attaches the [default key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) to the KMS key.
  final pulumi.Input<String>? policy;

  /// The ARN of the multi-Region primary key to replicate. The primary key must be in a different AWS Region of the same AWS Partition. You can create only one replica of a given primary key in each AWS Region.
  final pulumi.Input<String> primaryKeyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the replica key. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the key becomes unusable. If not specified, key material does not expire. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final pulumi.Input<String>? validTo;

  ReplicaExternalKeyArgs({
    this.bypassPolicyLockoutSafetyCheck,
    this.deletionWindowInDays,
    this.description,
    this.enabled,
    this.keyMaterialBase64,
    this.policy,
    required this.primaryKeyArn,
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
    final validToValue = validTo;
    if (validToValue != null) {
      map['validTo'] = validToValue;
    }
    return map;
  }

  factory ReplicaExternalKeyArgs.fromMap(Map<String, dynamic> map) {
    return ReplicaExternalKeyArgs(
      bypassPolicyLockoutSafetyCheck: pulumi.Input.asOptionalInput<bool>(
          map['bypassPolicyLockoutSafetyCheck']),
      deletionWindowInDays:
          pulumi.Input.asOptionalInput<int>(map['deletionWindowInDays']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      keyMaterialBase64:
          pulumi.Input.asOptionalInput<String>(map['keyMaterialBase64']),
      policy: pulumi.Input.asOptionalInput<String>(map['policy']),
      primaryKeyArn: pulumi.Input.asInput<String>(map['primaryKeyArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      validTo: pulumi.Input.asOptionalInput<String>(map['validTo']),
    );
  }
}
