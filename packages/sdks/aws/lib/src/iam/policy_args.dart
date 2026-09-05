// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_iam_policy_policy_args_doc}
class PolicyArgs {
  /// Number of ms to wait between creating the policy and setting its version as default. May be required in environments with very high S3 IO loads.
  final pulumi.Input<int?>? delayAfterPolicyCreationInMs;
  /// Description of the IAM policy.
  final pulumi.Input<String?>? description;
  /// Name of the policy. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String?>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String?>? namePrefix;
  /// Path in which to create the policy. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  final pulumi.Input<String?>? path;
  /// Policy document. This is a JSON formatted string. For more information about building AWS IAM policy documents, see the AWS IAM Policy Document Guide
  final pulumi.Input<dynamic> policy;
  /// Map of resource tags for the IAM Policy. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [PolicyArgs].
  /// [delayAfterPolicyCreationInMs] Number of ms to wait between creating the policy and setting its version as default. May be required in environments with very high S3 IO loads.
  /// [description] Description of the IAM policy.
  /// [name] Name of the policy. If omitted, the provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [path] Path in which to create the policy. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  /// [policy] Policy document. This is a JSON formatted string. For more information about building AWS IAM policy documents, see the AWS IAM Policy Document Guide
  /// [tags] Map of resource tags for the IAM Policy. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const PolicyArgs({
    this.delayAfterPolicyCreationInMs,
    this.description,
    this.name,
    this.namePrefix,
    this.path,
    required this.policy,
    this.tags,
  });

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
      delayAfterPolicyCreationInMs: (() { final guardedValue = map['delayAfterPolicyCreationInMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: pulumi.Input.fromValue(map['policy']),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
