// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Policy.
class PolicyArgs5 {
  /// Number of ms to wait between creating the policy and setting its version as default. May be required in environments with very high S3 IO loads.
  final Input<int>? delayAfterPolicyCreationInMs;

  /// Description of the IAM policy.
  final Input<String>? description;

  /// Name of the policy. If omitted, the provider will assign a random, unique name.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final Input<String>? namePrefix;

  /// Path in which to create the policy. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  final Input<String>? path;

  /// Policy document. This is a JSON formatted string. For more information about building AWS IAM policy documents, see the AWS IAM Policy Document Guide
  final Input<String> policy;

  /// Map of resource tags for the IAM Policy. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  PolicyArgs5({
    this.delayAfterPolicyCreationInMs,
    this.description,
    this.name,
    this.namePrefix,
    this.path,
    required this.policy,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final delayAfterPolicyCreationInMsValue = delayAfterPolicyCreationInMs;
    if (delayAfterPolicyCreationInMsValue != null) {
      map['delayAfterPolicyCreationInMs'] = delayAfterPolicyCreationInMsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    map['policy'] = policy;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory PolicyArgs5.fromMap(Map<String, dynamic> map) {
    return PolicyArgs5(
      delayAfterPolicyCreationInMs:
          Input.asOptionalInput<int>(map['delayAfterPolicyCreationInMs']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      path: Input.asOptionalInput<String>(map['path']),
      policy: Input.asInput<String>(map['policy']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
