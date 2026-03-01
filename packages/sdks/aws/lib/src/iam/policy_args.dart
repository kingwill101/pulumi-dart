// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_iam_policy_policy_args_doc}
class PolicyArgs {
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

  /// Creates a new [PolicyArgs].
  /// [delayAfterPolicyCreationInMs] Number of ms to wait between creating the policy and setting its version as default. May be required in environments with very high S3 IO loads.
  /// [description] Description of the IAM policy.
  /// [name] Name of the policy. If omitted, the provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [path] Path in which to create the policy. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  /// [policy] Policy document. This is a JSON formatted string. For more information about building AWS IAM policy documents, see the AWS IAM Policy Document Guide
  /// [tags] Map of resource tags for the IAM Policy. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  PolicyArgs({
    pulumi.Output<int>? delayAfterPolicyCreationInMs,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? path,
    required pulumi.Output<String> policy,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      delayAfterPolicyCreationInMs = pulumi.Input.asOptionalInput<int>(delayAfterPolicyCreationInMs),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      path = pulumi.Input.asOptionalInput<String>(path),
      policy = pulumi.Input.asInput<String>(policy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayAfterPolicyCreationInMs': ?delayAfterPolicyCreationInMs,
      'description': ?description,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'path': ?path,
      'policy': policy,
      'tags': ?tags,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      delayAfterPolicyCreationInMs: map['delayAfterPolicyCreationInMs'] == null ? null : pulumi.Output.create<int>(map['delayAfterPolicyCreationInMs'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      policy: pulumi.Output.create<String>(map['policy'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

