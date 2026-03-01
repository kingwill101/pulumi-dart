// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/iam.dart' as pulumi_aws_iam;

/// The set of arguments for constructing a Role resource and Policy attachments.
class RoleWithPolicy {
  /// Description of the role.
  final String? description;

  /// Whether to force detaching any policies the role has before destroying it. Defaults to `false`.
  final bool? forceDetachPolicies;

  /// Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Pulumi will not manage any inline policies in this resource. Configuring one empty block (i.e., `inline_policy {}`) will cause Pulumi to remove _all_ inline policies added out of band on `apply`.
  final List<pulumi_aws_iam.RoleInlinePolicy>? inlinePolicies;

  /// Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Pulumi will ignore policy attachments to this resource. When configured, Pulumi will align the role's managed policy attachments with this set by attaching or detaching managed policies. Configuring an empty set (i.e., `managed_policy_arns = []`) will cause Pulumi to remove _all_ managed policy attachments.
  final List<String>? managedPolicyArns;

  /// Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.
  final int? maxSessionDuration;

  /// Friendly name of the role. If omitted, the provider will assign a random, unique name. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  final String? name;

  /// Creates a unique friendly name beginning with the specified prefix. Conflicts with `name`.
  final String? namePrefix;

  /// Path to the role. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  final String? path;

  /// ARN of the policy that is used to set the permissions boundary for the role.
  final String? permissionsBoundary;

  /// ARNs of the policies to attach to the created role.
  final List<String>? policyArns;

  /// Key-value mapping of tags for the IAM role. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;

  /// Creates a new [RoleWithPolicy].
  /// [description] Description of the role.
  /// [forceDetachPolicies] Whether to force detaching any policies the role has before destroying it. Defaults to `false`.
  /// [inlinePolicies] Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Pulumi will not manage any inline policies in this resource. Configuring one empty block (i.e., `inline_policy {}`) will cause Pulumi to remove _all_ inline policies added out of band on `apply`.
  /// [managedPolicyArns] Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Pulumi will ignore policy attachments to this resource. When configured, Pulumi will align the role's managed policy attachments with this set by attaching or detaching managed policies. Configuring an empty set (i.e., `managed_policy_arns = []`) will cause Pulumi to remove _all_ managed policy attachments.
  /// [maxSessionDuration] Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.
  /// [name] Friendly name of the role. If omitted, the provider will assign a random, unique name. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  /// [namePrefix] Creates a unique friendly name beginning with the specified prefix. Conflicts with `name`.
  /// [path] Path to the role. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  /// [permissionsBoundary] ARN of the policy that is used to set the permissions boundary for the role.
  /// [policyArns] ARNs of the policies to attach to the created role.
  /// [tags] Key-value mapping of tags for the IAM role. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  RoleWithPolicy({
    this.description,
    this.forceDetachPolicies,
    this.inlinePolicies,
    this.managedPolicyArns,
    this.maxSessionDuration,
    this.name,
    this.namePrefix,
    this.path,
    this.permissionsBoundary,
    this.policyArns,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'forceDetachPolicies': ?forceDetachPolicies,
      'inlinePolicies': ?inlinePolicies == null
          ? null
          : pulumi.Input.encodeList<
              pulumi_aws_iam.RoleInlinePolicy,
              Map<String, dynamic>
            >(inlinePolicies!, (value) => value.toMap()),
      'managedPolicyArns': ?managedPolicyArns,
      'maxSessionDuration': ?maxSessionDuration,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'path': ?path,
      'permissionsBoundary': ?permissionsBoundary,
      'policyArns': ?policyArns,
      'tags': ?tags,
    };
  }

  factory RoleWithPolicy.fromMap(Map<String, dynamic> map) {
    return RoleWithPolicy(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      forceDetachPolicies: map['forceDetachPolicies'] == null
          ? null
          : map['forceDetachPolicies'] as bool,
      inlinePolicies: map['inlinePolicies'] == null
          ? null
          : pulumi.Input.decodeList<pulumi_aws_iam.RoleInlinePolicy>(
              map['inlinePolicies'],
              (value) => pulumi_aws_iam.RoleInlinePolicy.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      managedPolicyArns: map['managedPolicyArns'] == null
          ? null
          : (map['managedPolicyArns'] as List).cast<String>(),
      maxSessionDuration: map['maxSessionDuration'] == null
          ? null
          : map['maxSessionDuration'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix: map['namePrefix'] == null
          ? null
          : map['namePrefix'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      permissionsBoundary: map['permissionsBoundary'] == null
          ? null
          : map['permissionsBoundary'] as String,
      policyArns: map['policyArns'] == null
          ? null
          : (map['policyArns'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
