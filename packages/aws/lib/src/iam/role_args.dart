// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_inline_policy.dart';

/// {@template pulumi_iam_role_role_args_doc}
/// The set of arguments for Role.
/// {@endtemplate}
/// {@macro pulumi_iam_role_role_args_doc}
class RoleArgs {
  /// Policy that grants an entity permission to assume the role.
  ///
  /// > **NOTE:** The `assume_role_policy` is very similar to but slightly different than a standard IAM policy and cannot use an `aws.iam.Policy` resource.  However, it _can_ use an `aws.iam.getPolicyDocument` data source. See the example above of how this works.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> assumeRolePolicy;

  /// Description of the role.
  final pulumi.Input<String>? description;

  /// Whether to force detaching any policies the role has before destroying it. Defaults to `false`.
  final pulumi.Input<bool>? forceDetachPolicies;

  /// Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Pulumi will not manage any inline policies in this resource. Configuring one empty block (i.e., `inline_policy {}`) will cause Pulumi to remove _all_ inline policies added out of band on `apply`.
  final pulumi.Input<List<RoleInlinePolicy>>? inlinePolicies;

  /// Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Pulumi will ignore policy attachments to this resource. When configured, Pulumi will align the role's managed policy attachments with this set by attaching or detaching managed policies. Configuring an empty set (i.e., `managed_policy_arns = []`) will cause Pulumi to remove _all_ managed policy attachments.
  final pulumi.Input<List<String>>? managedPolicyArns;

  /// Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.
  final pulumi.Input<int>? maxSessionDuration;

  /// Friendly name of the role. If omitted, the provider will assign a random, unique name. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  final pulumi.Input<String>? name;

  /// Creates a unique friendly name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// Path to the role. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  final pulumi.Input<String>? path;

  /// ARN of the policy that is used to set the permissions boundary for the role.
  final pulumi.Input<String>? permissionsBoundary;

  /// Key-value mapping of tags for the IAM role. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RoleArgs].
  /// [assumeRolePolicy] Policy that grants an entity permission to assume the role.
  /// [description] Description of the role.
  /// [forceDetachPolicies] Whether to force detaching any policies the role has before destroying it. Defaults to `false`.
  /// [inlinePolicies] Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Pulumi will not manage any inline policies in this resource. Configuring one empty block (i.e., `inline_policy {}`) will cause Pulumi to remove _all_ inline policies added out of band on `apply`.
  /// [managedPolicyArns] Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Pulumi will ignore policy attachments to this resource. When configured, Pulumi will align the role's managed policy attachments with this set by attaching or detaching managed policies. Configuring an empty set (i.e., `managed_policy_arns = []`) will cause Pulumi to remove _all_ managed policy attachments.
  /// [maxSessionDuration] Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.
  /// [name] Friendly name of the role. If omitted, the provider will assign a random, unique name. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  /// [namePrefix] Creates a unique friendly name beginning with the specified prefix. Conflicts with `name`.
  /// [path] Path to the role. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  /// [permissionsBoundary] ARN of the policy that is used to set the permissions boundary for the role.
  /// [tags] Key-value mapping of tags for the IAM role. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  RoleArgs({
    required String assumeRolePolicy,
    String? description,
    bool? forceDetachPolicies,
    List<RoleInlinePolicy>? inlinePolicies,
    List<String>? managedPolicyArns,
    int? maxSessionDuration,
    String? name,
    String? namePrefix,
    String? path,
    String? permissionsBoundary,
    Map<String, String>? tags,
  }) : assumeRolePolicy = pulumi.Input.asInput<String>(assumeRolePolicy),
       description = pulumi.Input.asOptionalInput<String>(description),
       forceDetachPolicies = pulumi.Input.asOptionalInput<bool>(
         forceDetachPolicies,
       ),
       inlinePolicies = pulumi.Input.asOptionalInput<List<RoleInlinePolicy>>(
         inlinePolicies,
       ),
       managedPolicyArns = pulumi.Input.asOptionalInput<List<String>>(
         managedPolicyArns,
       ),
       maxSessionDuration = pulumi.Input.asOptionalInput<int>(
         maxSessionDuration,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
       path = pulumi.Input.asOptionalInput<String>(path),
       permissionsBoundary = pulumi.Input.asOptionalInput<String>(
         permissionsBoundary,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assumeRolePolicy': assumeRolePolicy,
      'description': ?description,
      'forceDetachPolicies': ?forceDetachPolicies,
      'inlinePolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<RoleInlinePolicy>,
            List<Map<String, dynamic>>
          >(
            inlinePolicies,
            (value) =>
                pulumi.Input.encodeList<RoleInlinePolicy, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'managedPolicyArns': ?managedPolicyArns,
      'maxSessionDuration': ?maxSessionDuration,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'path': ?path,
      'permissionsBoundary': ?permissionsBoundary,
      'tags': ?tags,
    };
  }

  factory RoleArgs.fromMap(Map<String, dynamic> map) {
    return RoleArgs(
      assumeRolePolicy: map['assumeRolePolicy'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      forceDetachPolicies: map['forceDetachPolicies'] == null
          ? null
          : map['forceDetachPolicies'] as bool,
      inlinePolicies: map['inlinePolicies'] == null
          ? null
          : pulumi.Input.decodeList<RoleInlinePolicy>(
              map['inlinePolicies'],
              (value) => RoleInlinePolicy.fromMap(
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
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
