// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../role_inline_policy/role_inline_policy.dart';

/// The set of arguments for Role.
class RoleArgs {
  /// Policy that grants an entity permission to assume the role.
  ///
  /// > **NOTE:** The <span pulumi-lang-nodejs="`assumeRolePolicy`" pulumi-lang-dotnet="`AssumeRolePolicy`" pulumi-lang-go="`assumeRolePolicy`" pulumi-lang-python="`assume_role_policy`" pulumi-lang-yaml="`assumeRolePolicy`" pulumi-lang-java="`assumeRolePolicy`">`assume_role_policy`</span> is very similar to but slightly different than a standard IAM policy and cannot use an <span pulumi-lang-nodejs="`aws.iam.Policy`" pulumi-lang-dotnet="`aws.iam.Policy`" pulumi-lang-go="`iam.Policy`" pulumi-lang-python="`iam.Policy`" pulumi-lang-yaml="`aws.iam.Policy`" pulumi-lang-java="`aws.iam.Policy`">`aws.iam.Policy`</span> resource.  However, it _can_ use an <span pulumi-lang-nodejs="`aws.iam.getPolicyDocument`" pulumi-lang-dotnet="`aws.iam.getPolicyDocument`" pulumi-lang-go="`iam.getPolicyDocument`" pulumi-lang-python="`iam_get_policy_document`" pulumi-lang-yaml="`aws.iam.getPolicyDocument`" pulumi-lang-java="`aws.iam.getPolicyDocument`">`aws.iam.getPolicyDocument`</span> data source. See the example above of how this works.
  ///
  /// The following arguments are optional:
  final Input<String> assumeRolePolicy;

  /// Description of the role.
  final Input<String>? description;

  /// Whether to force detaching any policies the role has before destroying it. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? forceDetachPolicies;

  /// Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Pulumi will not manage any inline policies in this resource. Configuring one empty block (i.e., <span pulumi-lang-nodejs="`inlinePolicy " pulumi-lang-dotnet="`InlinePolicy " pulumi-lang-go="`inlinePolicy " pulumi-lang-python="`inline_policy " pulumi-lang-yaml="`inlinePolicy " pulumi-lang-java="`inlinePolicy ">`inline_policy </span>{}`) will cause Pulumi to remove _all_ inline policies added out of band on <span pulumi-lang-nodejs="`apply`" pulumi-lang-dotnet="`Apply`" pulumi-lang-go="`apply`" pulumi-lang-python="`apply`" pulumi-lang-yaml="`apply`" pulumi-lang-java="`apply`">`apply`</span>.
  final Input<List<RoleInlinePolicy>>? inlinePolicies;

  /// Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Pulumi will ignore policy attachments to this resource. When configured, Pulumi will align the role's managed policy attachments with this set by attaching or detaching managed policies. Configuring an empty set (i.e., <span pulumi-lang-nodejs="`managedPolicyArns " pulumi-lang-dotnet="`ManagedPolicyArns " pulumi-lang-go="`managedPolicyArns " pulumi-lang-python="`managed_policy_arns " pulumi-lang-yaml="`managedPolicyArns " pulumi-lang-java="`managedPolicyArns ">`managed_policy_arns </span>= []`) will cause Pulumi to remove _all_ managed policy attachments.
  final Input<List<String>>? managedPolicyArns;

  /// Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.
  final Input<int>? maxSessionDuration;

  /// Friendly name of the role. If omitted, the provider will assign a random, unique name. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  final Input<String>? name;

  /// Creates a unique friendly name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// Path to the role. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  final Input<String>? path;

  /// ARN of the policy that is used to set the permissions boundary for the role.
  final Input<String>? permissionsBoundary;

  /// Key-value mapping of tags for the IAM role. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      map['inlinePolicies'] = Input.mapOptionalInputValue<
              List<RoleInlinePolicy>, List<Map<String, dynamic>>>(
          inlinePoliciesValue,
          (value) => Input.encodeList<RoleInlinePolicy, Map<String, dynamic>>(
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
      assumeRolePolicy: Input.asInput<String>(map['assumeRolePolicy']),
      description: Input.asOptionalInput<String>(map['description']),
      forceDetachPolicies:
          Input.asOptionalInput<bool>(map['forceDetachPolicies']),
      inlinePolicies:
          Input.asOptionalInput<List<RoleInlinePolicy>>(map['inlinePolicies']),
      managedPolicyArns:
          Input.asOptionalInput<List<String>>(map['managedPolicyArns']),
      maxSessionDuration: Input.asOptionalInput<int>(map['maxSessionDuration']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      path: Input.asOptionalInput<String>(map['path']),
      permissionsBoundary:
          Input.asOptionalInput<String>(map['permissionsBoundary']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
