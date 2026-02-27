// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Policy.
class PolicyIamArgs {
  /// Number of ms to wait between creating the policy and setting its version as default. May be required in environments with very high S3 IO loads.
  final pulumi.Input<int>? delayAfterPolicyCreationInMs;

  /// Description of the IAM policy.
  final pulumi.Input<String>? description;

  /// Name of the policy. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// Path in which to create the policy. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  final pulumi.Input<String>? path;

  /// Policy document. This is a JSON formatted string. For more information about building AWS IAM policy documents, see the AWS IAM Policy Document Guide
  final pulumi.Input<String> policy;

  /// Map of resource tags for the IAM Policy. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  PolicyIamArgs({
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

  factory PolicyIamArgs.fromMap(Map<String, dynamic> map) {
    return PolicyIamArgs(
      delayAfterPolicyCreationInMs: pulumi.Input.asOptionalInput<int>(
          map['delayAfterPolicyCreationInMs']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      path: pulumi.Input.asOptionalInput<String>(map['path']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
