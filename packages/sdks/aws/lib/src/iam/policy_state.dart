// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// ARN assigned by AWS to this policy.
  final pulumi.Input<String>? arn;
  /// Number of entities (users, groups, and roles) that the policy is attached to.
  final pulumi.Input<int>? attachmentCount;
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
  final pulumi.Input<String>? policy;
  /// Policy's ID.
  final pulumi.Input<String>? policyId;
  /// Map of resource tags for the IAM Policy. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [PolicyState].
  /// [arn] ARN assigned by AWS to this policy.
  /// [attachmentCount] Number of entities (users, groups, and roles) that the policy is attached to.
  /// [delayAfterPolicyCreationInMs] Number of ms to wait between creating the policy and setting its version as default. May be required in environments with very high S3 IO loads.
  /// [description] Description of the IAM policy.
  /// [name] Name of the policy. If omitted, the provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [path] Path in which to create the policy. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  /// [policy] Policy document. This is a JSON formatted string. For more information about building AWS IAM policy documents, see the AWS IAM Policy Document Guide
  /// [policyId] Policy's ID.
  /// [tags] Map of resource tags for the IAM Policy. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  PolicyState({
    this.arn,
    this.attachmentCount,
    this.delayAfterPolicyCreationInMs,
    this.description,
    this.name,
    this.namePrefix,
    this.path,
    this.policy,
    this.policyId,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attachmentCount': ?attachmentCount,
      'delayAfterPolicyCreationInMs': ?delayAfterPolicyCreationInMs,
      'description': ?description,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'path': ?path,
      'policy': ?policy,
      'policyId': ?policyId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      attachmentCount: map['attachmentCount'] == null ? null : ((map['attachmentCount'] as int).input()).input(),
      delayAfterPolicyCreationInMs: map['delayAfterPolicyCreationInMs'] == null ? null : ((map['delayAfterPolicyCreationInMs'] as int).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      namePrefix: map['namePrefix'] == null ? null : ((map['namePrefix'] as String).input()).input(),
      path: map['path'] == null ? null : ((map['path'] as String).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      policyId: map['policyId'] == null ? null : ((map['policyId'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

