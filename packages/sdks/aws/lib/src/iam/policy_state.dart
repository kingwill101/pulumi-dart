// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// ARN assigned by AWS to this policy.
  final pulumi.Input<String?>? arn;
  /// Number of entities (users, groups, and roles) that the policy is attached to.
  final pulumi.Input<int?>? attachmentCount;
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
  final pulumi.Input<dynamic>? policy;
  /// Policy's ID.
  final pulumi.Input<String?>? policyId;
  /// Map of resource tags for the IAM Policy. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

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
  /// [tags] Map of resource tags for the IAM Policy. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const PolicyState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attachmentCount: (() { final guardedValue = map['attachmentCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      delayAfterPolicyCreationInMs: (() { final guardedValue = map['delayAfterPolicyCreationInMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
