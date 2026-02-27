// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../role_inline_policy/role_inline_policy.dart';

/// The set of arguments for Role.
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

  RoleArgs({
    required this.assumeRolePolicy,
    this.description,
    this.forceDetachPolicies,
    this.inlinePolicies,
    this.managedPolicyArns,
    this.maxSessionDuration,
    this.name,
    this.namePrefix,
    this.path,
    this.permissionsBoundary,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assumeRolePolicy'] = assumeRolePolicy;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final forceDetachPoliciesValue = forceDetachPolicies;
    if (forceDetachPoliciesValue != null) {
      map['forceDetachPolicies'] = forceDetachPoliciesValue;
    }
    final inlinePoliciesValue = inlinePolicies;
    if (inlinePoliciesValue != null) {
      map['inlinePolicies'] = pulumi.Input.mapOptionalInputValue<
              List<RoleInlinePolicy>, List<Map<String, dynamic>>>(
          inlinePoliciesValue,
          (value) =>
              pulumi.Input.encodeList<RoleInlinePolicy, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final managedPolicyArnsValue = managedPolicyArns;
    if (managedPolicyArnsValue != null) {
      map['managedPolicyArns'] = managedPolicyArnsValue;
    }
    final maxSessionDurationValue = maxSessionDuration;
    if (maxSessionDurationValue != null) {
      map['maxSessionDuration'] = maxSessionDurationValue;
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
    final permissionsBoundaryValue = permissionsBoundary;
    if (permissionsBoundaryValue != null) {
      map['permissionsBoundary'] = permissionsBoundaryValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RoleArgs.fromMap(Map<String, dynamic> map) {
    return RoleArgs(
      assumeRolePolicy: pulumi.Input.asInput<String>(map['assumeRolePolicy']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      forceDetachPolicies:
          pulumi.Input.asOptionalInput<bool>(map['forceDetachPolicies']),
      inlinePolicies: pulumi.Input.asOptionalInput<List<RoleInlinePolicy>>(
          map['inlinePolicies']),
      managedPolicyArns:
          pulumi.Input.asOptionalInput<List<String>>(map['managedPolicyArns']),
      maxSessionDuration:
          pulumi.Input.asOptionalInput<int>(map['maxSessionDuration']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      path: pulumi.Input.asOptionalInput<String>(map['path']),
      permissionsBoundary:
          pulumi.Input.asOptionalInput<String>(map['permissionsBoundary']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
