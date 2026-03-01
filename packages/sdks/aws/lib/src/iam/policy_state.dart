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
    pulumi.Output<String>? arn,
    pulumi.Output<int>? attachmentCount,
    pulumi.Output<int>? delayAfterPolicyCreationInMs,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? path,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? policyId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      attachmentCount = pulumi.Input.asOptionalInput<int>(attachmentCount),
      delayAfterPolicyCreationInMs = pulumi.Input.asOptionalInput<int>(delayAfterPolicyCreationInMs),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      path = pulumi.Input.asOptionalInput<String>(path),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      policyId = pulumi.Input.asOptionalInput<String>(policyId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      attachmentCount: map['attachmentCount'] == null ? null : pulumi.Output.create<int>(map['attachmentCount'] as int),
      delayAfterPolicyCreationInMs: map['delayAfterPolicyCreationInMs'] == null ? null : pulumi.Output.create<int>(map['delayAfterPolicyCreationInMs'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

